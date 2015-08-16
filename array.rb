puts "lets sort some names for you"
puts "when you're done just press enter again on the blank slot"

names = []
input = ' '
while input != ''
  input = gets.chomp
  names << input
end

puts
puts names.sort
