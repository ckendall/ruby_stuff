puts "I'm going to ask some questions"
class Question
  
def initialize
 @questions = 5
 @right = 0
 @wrong = 0
end

def first
  puts "what is 2 + 2"
  answer = gets.chomp.to_i
  if answer == 4
    puts "correct"
    @right += 1
  else
    puts "wrong"
    @wrong += 1
  end
  second
end

def second
    puts "what is 6-3"
  answer = gets.chomp.to_i
  if answer == 3
    puts "correct"
    @right += 1
  else
    puts "wrong"
    @wrong += 1
  end
  third
end

def third
    puts "what is 10 + 10"
  answer = gets.chomp.to_i
  if answer == 20
    puts "correct"
    @right += 1
  else
    puts "wrong"
    @wrong += 1
  end
  fourth
end

def fourth
    puts "what is 17 + 23"
  answer = gets.chomp.to_i
  if answer == 40
    puts "correct"
    @right += 1
  else
    puts "wrong"
    @wrong += 1
  end
  fifth
end

def fifth
    puts "who was the first president of the US?"
  answer = gets.chomp.downcase
  if answer == "george washington"
    puts "correct"
    @right += 1
  else
    puts "wrong"
    @wrong += 1
  end
  final_score
end

def final_score
  right = @right
  questions = @questions
  
  final = (right.to_f / questions.to_f)*100
  
  puts "Your final score is: #{final}" 
end
end

hey = Question.new
hey.first

