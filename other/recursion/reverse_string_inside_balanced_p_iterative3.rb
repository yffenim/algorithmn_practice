
def reverse_string_helper(string)
  array =  string.chars
  right = 0
  left = 0
  pointer = 0
  reverse = []
  sliced_array = []
  
  until array[pointer] == ")"
    pointer += 1
    if array[pointer] == ")"
      right = pointer
    end
    # sliced_array = array.slice(i+0...array.length)
    # puts "the sliced array half: #{sliced_array}"
    while array[right] != "(" do
      pointer1 -= 1
      reverse << array[pointer1]
      if array[pointer1] == "("
        pointer2 = pointer1 
      end
      #puts "reverse: #{reverse}"
      #puts "after break"
    end
    reverse.pop
    # puts "to be reversed: #{reverse}"    
    array = array.slice(0...pointer2) + reverse + sliced_array 
    puts "array is: #{array}"
  end
end
    

p reverse_string_helper("((abcd)(dcba))")
# p reverse_string_iterative("()") == ""
# p reverse_string_iterative("(ab)") == "ba"
# p reverse_string_iterative("(cd)(ab)") == "dcba"
# p reverse_string_iterative("((cd)(ab))") == "abcd"
# p reverse_string_iterative("(a(bc)((de))f)") == "fedbca"
