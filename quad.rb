def pos_quad(a,b,c)
negative_b = -b
b_squared = b ** 2
four_a_c = 4 * a * c
sqrt = Math.sqrt(b_squared - four_a_c)
numerator = negative_b + sqrt
denominator = 2 * a
return numerator / denominator
end 

def neg_quad(a,b,c)
negative_b = -b
b_squared = b ** 2
four_a_c = 4 * a * c
sqrt  = Math.sqrt(b_squared - four_a_c)
numerator = negative_b - sqrt
denominator = 2 * a
return numerator / denominator
end

puts "lets calculate the quadratic formula shall we?"
puts "now give me your 'A' variable"
a = gets.chomp.to_f
puts "now give me your 'B' variable"
b = gets.chomp.to_f
puts "now let me have your 'C' variable"
c = gets.chomp.to_f

puts pos_quad(a,b,c).to_s
puts neg_quad(a,b,c).to_s
