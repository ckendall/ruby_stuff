class RockPaperScissor
  
  def initialize(computer_pick)
     @computer_pick = computer_pick
     @player_score = 0
     @computer_score = 0
  end
  
  def score
   puts `clear`
   puts "player score: #{@player_score}"
   puts "computer score: #{@computer_score}"
   lets_get_started
  end
   
  def lets_get_started
   puts "what is your pick? 'rock', 'paper', or 'scissors'?"
   choice = gets.chomp.downcase
   @pick = choice
     if @pick == "rock"
       player_rock
     elsif @pick == "paper"
       player_paper
     elsif @pick == "scissors"
       player_scissors
     else
       puts "I didn't understand that, try again"
       lets_get_started
     end
  end
   
  def player_rock
    if @computer_pick == "scissors"
      player_wins
    elsif @computer_pick == "rock"
      draw
    else
      computer_wins
    end
  end

  def player_paper
    if @computer_pick == "rock"
      player_wins
    elsif @computer_pick == "paper"
      draw
    else
      computer_wins
    end
  end

  def player_scissors
    if @computer_pick == "paper"
      player_wins
    elsif @computer_pick == "scissors"
      draw
    else
      computer_wins
    end
  end
  
  def draw
    puts "There was a draw!"
    play_again
  end
 
  def player_wins
    puts "You won that one!!"
    @player_score += 1
    play_again
  end
 
  def computer_wins
    puts "oops sorry you lost!"
    @computer_score += 1
    play_again
  end
  
  def play_again
    puts "Do you want to play again? 'yes' or 'no'"
    again = gets.chomp.downcase
    if again == "yes"
      #try and figure the loop
    end
  end
end

computer_choices = ["rock", "paper", "scissors"]
play = RockPaperScissor.new(computer_choices.sample)
play.score

