WORD_TO_NUMBER = {
  'nine' => 9,
  'eight' => 8,
  'seven' => 7,
  'six' => 6,
  'five' => 5,
  'four' => 4,
  'three' => 3,
  'two' => 2,
  'one' => 1,
  'zero' => 0}


def change_word(words)
  numbers = ''
  change.split(';') do |change|
    WORD_TO_NUMBER.each do |word, number|
      if change == word
        numbers += number.to_s
      end
    end
  end
 puts numbers
end

change_word('three;seven;eight;nine;two')