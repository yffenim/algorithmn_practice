
def reverse_string_iterative(string)
# return statement for no letters
  array =  string.chars
  pointer1 = 0
  pointer2 = 0
  reverse = []
  sliced_array = []

  array.each_with_index do | char, i |
    if char == ")"
      pointer1 = i 
      # sliced_array = array.slice(i+0...array.length)
      # puts "the sliced array half: #{sliced_array}"
      while array[pointer1] != "(" do
        pointer1 -= 1
        reverse << array[pointer1]
        if array[pointer1] == "("
          pointer2 = pointer1 
        end
        #puts "reverse: #{reverse}"
        #puts "after break"
      end
      reverse.pop
      puts "to be reversed: #{reverse}"    
      array = array.slice(0...pointer2) + reverse + sliced_array 
      puts "array is: #{array}"
    end
  end
      puts "array is: #{array}"
    # puts "#{sliced_array}"
    # puts "#{array.slice(0..pointer2)}"
    # array = array.slice(0...pointer2) + reverse + sliced_array 
    # puts "the new array: #{array}"
  end

p reverse_string_iterative("((abcd)(dcba))")
# p reverse_string_iterative("()") == ""
# p reverse_string_iterative("(ab)") == "ba"
# p reverse_string_iterative("(cd)(ab)") == "dcba"
# p reverse_string_iterative("((cd)(ab))") == "abcd"
# p reverse_string_iterative("(a(bc)((de))f)") == "fedbca"
