# start with [-1] in stack to account for starting with "()" cases otherwise they will trigger the stack.empty logic

# iterate through by index, add all "(" to stack by index
# 
# if ")" and stack.last != "(", add i to stack
# if ")" and stack.last == "("
#   check if stack is empty? 
#   if empty: add i bc you are at a lonely bracket
#   if not empty: pop last, call max, add i

def longest_valid_parentheses(s)
  return 0 if s.length < 2
  
  stack = [-1]
  max = []

  s.chars.each_with_index do | bracket, i |
    if bracket == "("      
      stack << i
      # puts "stack is: #{stack}"
    elsif bracket == ")" && s[i-1] == "("
      stack.pop
      puts "stack is: #{stack}"
      max << find_max(stack, i)
      stack << i
      puts "the max #{max}"
    else 
      stack << i
    end
  end
  puts max
end

def find_max(stack, right_bracket)
  # puts "right: #{right_bracket} and stack: #{stack.last}"
  max = right_bracket - stack.last
end



p longest_valid_parentheses("())(())()")
# p longest_valid_parentheses("()(())") == 6
# p longest_valid_parentheses("(((())))") == 8
# p longest_valid_parentheses("()(())") == 6
# p longest_valid_parentheses("") == 0
# p longest_valid_parentheses("()") == 2
# p longest_valid_parentheses("(()") == 2 
# p longest_valid_parentheses(")()())") == 4
# p longest_valid_parentheses(")))))") == 0
