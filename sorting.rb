require '/home/nitrous/test_helper.rb'

def our_sort(array)
  return array if array.count < 2
  still_need_to_loop = true 
  
  while still_need_to_loop == true do
    puts "sorting!"
    still_need_to_loop = false
    
    (0..array.count - 2).to_a.each do |this_index|
      puts "this_index : #{this_index} | array : #{array}"
      next_index = this_index + 1   
    
      if array[this_index] > array[next_index]
        still_need_to_loop = true
        smaller_element = array[next_index]
        bigger_element = array[this_index]
      elsif array[this_index] <= array[next_index]
        smaller_element = array[this_index]
        bigger_element = array[next_index]
      end
      array[this_index] = smaller_element
      array[next_index] = bigger_element      
    end
  end 
  puts "array #{array}" 
  return array
end

we_can('sort empty arrays') { our_sort([])  == [] }
we_can('sort single element arrays') { our_sort( [1] ) == [1] }
we_can('sort two element arrays') { our_sort( [2,1] ) == [1, 2] }
we_can('sort three element arrays') { our_sort( [3, 2, 1] ) == [1, 2, 3] }
we_can('sort four element arrays') { our_sort( [4, 3, 2, 1] ) == [1, 2, 3, 4] }

# TEST: sort three element arrays : STATUS SUCCESS
# sorting!
# this_index : 0 | array : [4, 3, 2, 1]
# this_index : 1 | array : [3, 4, 2, 1]
# this_index : 2 | array : [3, 2, 4, 1]
# sorting!
# this_index : 0 | array : [3, 2, 1, 4]
# this_index : 1 | array : [2, 3, 1, 4]
# this_index : 2 | array : [2, 1, 3, 4]
# sorting!
# this_index : 0 | array : [2, 1, 3, 4]
# this_index : 1 | array : [1, 2, 3, 4]
# this_index : 2 | array : [1, 2, 3, 4]
# sorting!
# this_index : 0 | array : [1, 2, 3, 4]
# this_index : 1 | array : [1, 2, 3, 4]
# this_index : 2 | array : [1, 2, 3, 4]
# array [1, 2, 3, 4]
# TEST: sort four element arrays : STATUS SUCCESS