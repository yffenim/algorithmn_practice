def reverse_string_inside_balanced_parenthesis(string)
  return "" if string.empty?
  array = string.split("")
  result = reverse_smallest_unit(array).join("")
end 

def reverse_smallest_unit(array)
  # base case: if there are no more brackets in the array
  return array if !array.include?("(") 

  pointer1 = 0
  pointer2 = 0
  
  array.each_with_index do | char, i |
    if char == "("
      pointer1 = i 
    end 
    if char == ")"
      pointer2 = i
    break
    end
    puts "pointer1 and pointer2 are: #{pointer1} : #{pointer2}"
  end
  
  array[pointer1..pointer2] = array[pointer1..pointer2].reverse[1...-1]
  reverse_smallest_unit(array)
end

# p reverse_string_inside_balanced_parenthesis("()") == ""
# p reverse_string_inside_balanced_parenthesis("(ab)") == "ba"
# p reverse_string_inside_balanced_parenthesis("(cd)(ab)") == "dcba"
# p reverse_string_inside_balanced_parenthesis("((cd)(ab))") == "abcd"
p reverse_string_inside_balanced_parenthesis("((ab)c)") == "cab"
