class Evaluator
  
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end
  
  attr_reader :player_one, :player_two
    
  def evaluate(choice_one, choice_two)
    nil               if choice_one == choice_two 
    player_one.score! if choice_one > choice_two 
    player_two.score! if choice_one < choice_two 
  end
  
end

class Player 
  
  def initialize
    @score = 0
  end
  
  attr_reader :score
  
  def score!
    @score += 1
  end
  
end

ROCK = 'Rock'
PAPER = 'Paper'
SCISSORS = 'Scissors'
class Choice

  include Comparable
  def self.rock;  new(ROCK); end
  def self.paper;  new(PAPER);  end   
  def self.scissors;  new(SCISSORS); end
  
  def initialize(type)
    @type = type
  end  
  def type; @type; end 
  def rock?; type == ROCK; end 
  def paper?; type == PAPER; end 
  def scissors?; type == SCISSORS; end 
  

  def <=>(other_choice)
    return 0 if self.type == other_choice.type 
    if (rock? && other_choice.scissors?) || (paper? && other_choice.rock?) || (scissors? && other_choice.paper?)
      return 1
    end
    return -1
  end
    
end

evaluator_instance = Evaluator.new(Player.new, Player.new)
evaluator_instance.evaluate(Choice.rock, Choice.paper)
evaluator_instance.evaluate(Choice.new('Garbage'), Choice.paper)

puts evaluator_instance.player_one.score


# Choice.rock > Choice.paper  # false
#
# player_one = Player.new
# player_two = Player.new
#
# evaluator = Evaluator.new(player_one, player_two)
# evaluator.evaluate(Choice.rock, Choice.paper)


# class RockPaperScissor
#
#   def initialize(computer_pick)
#      @computer_pick = computer_pick
#      @player_score = 0
#      @computer_score = 0
#   end
#
#   def score
#    puts `clear`
#    puts "player score: #{@player_score}"
#    puts "computer score: #{@computer_score}"
#    lets_get_started
#   end
#
#   def lets_get_started
#    puts "what is your pick? 'rock', 'paper', or 'scissors'?"
#    choice = gets.chomp.downcase
#    @pick = choice
#      if @pick == "rock"
#        player_rock
#      elsif @pick == "paper"
#        player_paper
#      elsif @pick == "scissors"
#        player_scissors
#      else
#        puts "I didn't understand that, try again"
#        lets_get_started
#      end
#   end
#
#   def player_rock
#     if @computer_pick == "scissors"
#       player_wins
#     elsif @computer_pick == "rock"
#       draw
#     else
#       computer_wins
#     end
#   end
#
#   def player_paper
#     if @computer_pick == "rock"
#       player_wins
#     elsif @computer_pick == "paper"
#       draw
#     else
#       computer_wins
#     end
#   end
#
#   def player_scissors
#     if @computer_pick == "paper"
#       player_wins
#     elsif @computer_pick == "scissors"
#       draw
#     else
#       computer_wins
#     end
#   end
#
#   def draw
#     puts "There was a draw!"
#     play_again
#   end
#
#   def player_wins
#     puts "You won that one!!"
#     @player_score += 1
#     play_again
#   end
#
#   def computer_wins
#     puts "oops sorry you lost!"
#     @computer_score += 1
#     play_again
#   end
#
#   def play_again
#     puts "Do you want to play again? 'yes' or 'no'"
#     again = gets.chomp.downcase
#     if again == "yes"
#       #try and figure the loop
#     end
#   end
#
# end

# computer_choices = ["rock", "paper", "scissors"]
# play = RockPaperScissor.new(computer_choices.sample)
# play.score


#ROCK = 'Rock'
#PAPER = 'Paper'
#SCISSORS = 'Scissors'
#
# def rock_paper_scissors(player_score, computer_score)
#   # player_score = 0
#   # computer_score = 0
#   choice = [ROCK, PAPER, SCISSORS]
#   computer_random = rand(3)
#   computer = choice[computer_random]
#   puts "Pick one: Rock, Paper, Scissors"
#   answer = gets.chomp.downcase
#
#   if answer  == 'rock' && computer == 'rock'
#     puts "It's a tie"
#   elsif answer == 'rock' && computer == 'paper'
#     puts "computer won"
#     computer_score += 1
#   elsif answer == 'rock' && computer == 'scissors'
#     puts "You won!"
#     player_score += 1
#   elsif answer  == 'scissors' && computer == 'scissors'
#     puts "It's a tie"
#   elsif answer == 'scissors' && computer == 'rock'
#     puts "computer won"
#     computer_score += 1
#   elsif answer == 'scissors' && computer == 'paper'
#     puts "You won!"
#     player_score += 1
#   elsif answer  == 'paper' && computer == 'paper'
#     puts "It's a tie"
#   elsif answer == 'paper' && computer == 'scissors'
#     puts "computer won"
#     computer_score += 1
#   elsif answer == 'paper' && computer == 'rock'
#     puts "You won!"
#     player_score += 1
#   end
#
#   puts "player score is: #{player_score} and computer score is #{computer_score}"
#
#   puts "would you like to play again? Y/N?"
#   game_loop = gets.chomp.downcase
#   if game_loop == 'y'
#     rock_paper_scissors(player_score,computer_score)
#   else
#     puts "have a good day!"
#   end
# end
  
#rock_paper_scissors(0, 0)
