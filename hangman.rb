class GameLoop
  
  def self.play_hangman
    words_to_choose_from = ["house", "people", "neverland", "balloon", "sample", "zebra", "running", "reserve"]
    GameLoop.new(words_to_choose_from.sample).loop
  end
  
  def initialize(word_to_guess)
    @word_to_guess = word_to_guess
    @right_letter_guessed = []
    @wrong_letter_guessed = []
    @guesses = 4
  end
  
  def word_to_guess
    @word_to_guess 
  end
  
  def right_letter_guessed
    @right_letter_guessed
  end
  
  def wrong_letter_guessed
    @wrong_letter_guessed 
  end
  
  def loop
    display
    get_letter
  end

  def display
    puts "Hangman status: #{output_of_letters}"
  end
  
  def output_of_letters 
    letter_holder = []
    word_to_guess.split('').each do |letter|
      letter_holder << (right_letter_guessed.include?(letter) ? letter : "_") 
    end
    letter_holder.join('') 
  end
  
  def get_letter
     puts "Now guess a letter if you dare!"
     guessed_letter = gets.chomp.downcase
     
     if word_to_guess.include? guessed_letter
       if right_letter_guessed.include? guessed_letter
         puts `clear`
         puts "You already guessed that one!"
         get_letter
       else
         right_letter_guessed << guessed_letter
         win_game
       end
     else
       if wrong_letter_guessed.include? guessed_letter
         puts `clear`
         puts "That one was already guessed!"
         get_letter
       else
         wrong_letter_guessed << guessed_letter
         invalid_entry
       end
     end
  end
  
  def invalid_entry
    puts `clear`
    puts "Sorry that one just didn't work out!"
    @guesses -= 1
    display
    decision_to_play
  end
  
  def decision_to_play
    if @guesses > 1
        puts "You have #{@guesses} guesses left before you hang!"
        get_letter
    elsif @guesses == 1
        puts "You have one more guess left, better make it a good one!"
        get_letter
    else 
        lost_game
    end
  end
  
  def win_game
    puts `clear`
    display
    puts 'Think you know what the answer is type "yes" to answer or "enter" to continue'
    answer = gets.chomp.downcase
    if answer == "yes"
      type_to_win
    else
      puts `clear`
      display
      get_letter
    end
  end
  
  def type_to_win
    puts "okay so you think you know huh? type what you think and find out!"
    puts "keep in mind if you miss it you lose!"
    try = gets.chomp.downcase
    if  try == word_to_guess
      puts "You won the game!!"
    else
      lost_game
    end
  end
  
  def lost_game
     puts "Sorry you lost the game"
     puts "The answer was acutally '#{word_to_guess}'"
  end
end

class MetaHangman
  
    def loop
      puts "Would you like to play hangman? ( Y / N) "
      answer = gets.chomp
      play_hangman if answer == 'Y'
    end
    
    def play_hangman
      GameLoop.play_hangman
      loop
    end    
end

self_alias = MetaHangman.new
self_alias.loop
