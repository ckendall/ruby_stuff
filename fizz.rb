def fizz_buzz
    (1..100).each do |n|
      if (n % 15 == 0)
        puts "fizzbuzz"
      elsif n % 5 == 0
        puts "buzz"
      elsif n % 3 == 0
         puts "fizz"
      else
        puts n
      end
    end
end
    
puts fizz_buzz