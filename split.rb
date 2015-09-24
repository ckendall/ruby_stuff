def split_all(number_pattern)
  operator = 0
  work = number_pattern.split(' ')
  work[1].split('').each do |find_operator|
    if (find_operator == "+") or (find_operator == "-")
      number(work, operator, number_pattern)
    end
    operator += 1
  end
end

def number(work, operator, number_pattern)
  sum = 0
  i = 0
  array = []
  work[0].split('').each do |find_numbers|
    if i < operator
      i += 1
    end
  end
  array << work[0][0..i-1]
  array << work[0][i..-1]
  if number_pattern.include? "+" 
    array.each {|add| sum += add.to_i}
    puts sum
  else number_pattern.include? "-"
    sum = array[0].to_i - array[1].to_i
    puts sum
  end
end



split_all ('3413289830 a-bcdefghij')