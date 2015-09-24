def test!
  cases.each do |test_case|
    solution = Solution.new(test_case[:input])
    answer = test_case[:output]
    puts "TEST - solution.num_of_things_on_right_bit == 2"
    puts solution.num_of_things_on_right_bit == 2
    puts "TEST - solution.num_of_things_on_left_bit == 1"
    puts solution.num_of_things_on_left_bit == 1
    puts "TEST - solution.left_bit == 7"
    puts solution.left_bit == 7, solution.left_bit
    # puts solution.right_bit == 76, "#{solution.right_bit}"
    puts "TEST - solution.right_bit == 76"
    puts solution.right_bit == 76, solution.right_bit    
    puts "TEST - solution.right_bit == 76"
    puts solution.operator_str == '+'
    
    puts "TEST - solution.put_it_together == 83"
    puts solution.put_it_together == 83
    # puts "Your Solution: #{solution} | Answer : #{answer}"
    # raise StandardError, "WRONG!" unless solution == answer
  end
end

def cases
  [
    split_test_case("776 a+bc", '83')
  ]
end

def split_test_case(input, output)
  {input: input, output: output}
end

def solution(input)
  add_or_subtract(left_bit, operator, rightbit)
end


class Solution
  attr_reader :input
  def initialize(input)
    @input = input
  end
  
  def solution!

  end
  
  def number
    input.split(' ').first
  end
  
  def pattern
    input.split(' ').last
  end
  
  def left_bit
    number.to_s[0...num_of_things_on_left_bit].to_i
  end
  
  def right_bit
    number.to_s[(-num_of_things_on_right_bit)..-1].to_i
  end
  
  def operator_str
    pattern.split('').drop_while {|n| n != "+" }.first
  end
  
  def num_of_things_on_right_bit
    (pattern.split('').drop_while {|n| n != "+" }[1..-1]).count
  end
  
  def num_of_things_on_left_bit
    number.split('').count - num_of_things_on_right_bit
  end
  
  def put_it_together
    left_bit + right_bit
  end

end


test!