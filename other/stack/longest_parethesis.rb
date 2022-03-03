def longest_valid_parentheses(s, count=0)

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
