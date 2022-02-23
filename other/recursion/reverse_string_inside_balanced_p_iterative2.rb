
def reverse_string_iterative(string)
# return statement for no letters
  array =  string.chars
  pointer1 = 0
  pointer2 = 0
  reverse = []
  
  array.each_with_index do | char, i |
    if char == ")"
      pointer1 = i 
      while array[pointer1] != "(" do
        pointer1 -= 1
        reverse << array[pointer1]
        puts "reverse: #{reverse}"
        puts "after break"
      end
      reverse.pop
      puts "to be reversed: #{reverse}"    
    end
  end
end

p reverse_string_iterative("((abcd)(dcba))")
# p reverse_string_iterative("()") == ""
# p reverse_string_iterative("(ab)") == "ba"
# p reverse_string_iterative("(cd)(ab)") == "dcba"
# p reverse_string_iterative("((cd)(ab))") == "abcd"
# p reverse_string_iterative("(a(bc)((de))f)") == "fedbca"
