def reverse_string_iterative(string)
  stack = [] 
  array = string.chars 
  array.each do | char | 
    stack << char 
    if char == ")"
      puts "stack is: #{stack}
    end
  end
end
    
p reverse_string_iterative("((abcd)(dcba))")

# p reverse_string_iterative("()") == ""
# p reverse_string_iterative("(ab)") == "ba"
# p reverse_string_iterative("(cd)(ab)") == "dcba"
# p reverse_string_iterative("((cd)(ab))") == "abcd"
# p reverse_string_iterative("(a(bc)((de))f)") == "fedbca"
