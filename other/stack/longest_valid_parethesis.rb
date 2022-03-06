# start with [-1] in stack to account for starting with "()" cases otherwise they will trigger the stack.empty logic

# iterate through by index, add all "(" to stack by index
# 
# if ")" and stack.last != "(", add i to stack
# if ")" and stack.last == "("
#   check if stack is empty? 
#   if empty: add i bc you are at a lonely bracket
#   if not empty: pop last, call max



def longest_valid_parentheses(s)

end

p longest_valid_parentheses("())(())()") == 6
p longest_valid_parentheses("()(())") == 6
p longest_valid_parentheses("(((())))") == 8
p longest_valid_parentheses("()(())") == 6
p longest_valid_parentheses("") == 0
p longest_valid_parentheses("()") == 2
p longest_valid_parentheses("(()") == 2 
p longest_valid_parentheses(")()())") == 4
p longest_valid_parentheses(")))))") == 0
