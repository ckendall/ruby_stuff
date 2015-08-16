number_of_byes = 0
puts 'HI GRANDSON, HOW ARE YOU?'
while number_of_byes < 3
 answer = gets.chomp
 if answer == 'bye'
    number_of_byes += 1
    puts "YOURE NOT LEAVING ALREADY? COME, STAY LONGER!"
 end

  if answer == answer.upcase
    puts 'NO, NOT SINCE, ' + (rand(20) + 1930).to_s + '!'
  else
    puts'HUH?, SPEAK UP?!'
  end
end

  