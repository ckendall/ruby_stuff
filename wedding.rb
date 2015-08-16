def weddingDate number
  if number < 0
    "please enter a number greater than 0"
  end
  
  if number == 0
    return "zero"
  end
  
  write_out = ''
  
  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  remaining_number_write = number
  wedding_date = remaining_number_write/100
  remaining_number_write = remaining_number_write - wedding_date*100
  
 
  if wedding_date > 0
    hundreds = weddingDate wedding_date
    write_out = write_out + hundreds + ' hundred'
    
    if remaining_number_write > 0
       write_out = write_out + ' and '
    end
  end
  
  
  wedding_date = remaining_number_write/10
  remaining_number_write = remaining_number_write - wedding_date*10
  
  if ((wedding_date == 1) and (remaining_number_write > 0))
    write_out = write_out + teenagers[remaining_number_write - 1]
    remaining_number_write = 0
  else
    write_out = write_out + tensPlace[wedding_date -1]
  end
  
  if remaining_number_write > 0
    write_out = write_out + ' '
  end
  

  wedding_date = remaining_number_write
  remaining_number_write = 0
  
  if wedding_date > 0
    write_out = write_out + onesPlace[wedding_date - 1]
  end
  
  write_out
end

puts weddingDate(1988)

  
  