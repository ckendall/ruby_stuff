def englishNumber number
 if number < 0
  return "please enter a number that isn't negative."
 end
 if number == 0
  return "zero"
 end

 numString = '' # what we are returning

 onesPlace = ["one", "two", 'three', 'four', 'five', 'six', 'seven', 'eight',  'nine']
 tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty',                                   	      'sixty', 'seventy', 'eighty','ninety']
 teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
 hundredsPlace = [‘one hundred’, ‘two hundred’, ‘three hundred’, ‘four hundred’, ‘five hundred’, ‘six hundred’, ‘seven hundred’, ‘eight hundred’, ‘nine hundred’]

# "left" is how much of the number we still have left to write out
# "write" is the part we are writing out right now.

 left = number  
 write = left/1000  # how many thousands left to write out
 left = left - write*1000 # subtracting off the thousands

 if write > 0
  thoudsands = englishNumber write
  numString = numString + thousands + ' thousand’

  if left > 0
   numString = numString + ' '
  end 
 end

 write = left/100
 left = left - write *100

 if left > 0
   numString = numString + hundredsPlace[write -1]
 end

 if left > 0
   numString = numString + ‘ ‘
 end
 

 write = left/10
 left = left - write*10
 
 if write > 0
   if ((write == 1) and (left > 0))
    numString = numString + teenagers[left - 1]
    left = 0
   else
    numString = numString + tensPlace[write - 1]
   end

   if left > 0
    numString = numString + '-'
   end
 end

 write = left
 left = 0

 if write > 0
  numString = numString + onesPlace[write - 1]
 end
 numString
end
puts

puts englishNumber(1876)
