puts "Okay, we are going to try and find leap years."
puts "would you please give me a starting year?"
starting_year = gets.chomp.to_i
puts "Thank you, now how about an ending year?"
ending_year = gets.chomp.to_i
puts "this is the list of years"

if starting_year > ending_year
 puts "starting year should be smaller than ending year."
else
  while (starting_year <= ending_year)
   if (((starting_year %4 == 0) and (starting_year %100 !=0)) or (starting_year % 400 == 0))
    puts starting_year.to_s
   end
   (starting_year += 1)
  end
puts "there it is"
end

