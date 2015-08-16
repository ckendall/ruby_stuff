puts 'My name is Cody Kendall'
puts 'I\'m doing research on names and seeing if people know their grammar?'
puts 'whats your name?'
name = gets.chomp

 if name == name.capitalize
  puts 'I am so impressed with your knowledge of the English language.'
 else
  puts 'It doesn\'t look like you paid attention in school, '
  puts name.capitalize + ' is how you\'re suppose to spell it.'
  puts 'Did you know that?'
  reply = gets.chomp

   if reply.downcase == 'yes'
    puts 'Okay, now we can continue learning.'
   else
    puts 'Wow, you\'re as dumb as I thought!'
   end
 end