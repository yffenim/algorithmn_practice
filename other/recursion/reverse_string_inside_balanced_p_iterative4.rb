def reverse_string_iterative(string)
  stack = [] 
  array = string.chars 
  # reverse = [] # why does this not work here?

  array.each do | char | 
    if char == ")"
      reverse = []
      until stack.last == "("
        reverse << stack.pop
      end
      stack.pop
      stack += reverse 
    else
      stack << char
    end
  end
  stack.join
end
    
p reverse_string_iterative("((abcd)(dcba))") == "dcbaabcd"
p reverse_string_iterative("()") == ""
p reverse_string_iterative("(ab)") == "ba"
p reverse_string_iterative("(cd)(ab)") == "dcba"
p reverse_string_iterative("((cd)(ab))") == "abcd"
p reverse_string_iterative("(a(bc)((de))f)") == "fedbca"
