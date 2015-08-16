 guessed_letter = []
 word_to_guess = "hair"
 
 letter_holder = ''
 word_to_guess.split("").each do |letter|
 letter_holder += (guessed_letter.include?(letter)) ? letter : '#'
end
