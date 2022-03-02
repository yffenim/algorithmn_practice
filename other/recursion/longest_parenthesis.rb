def longest_valid_parentheses(s)
  p s.scan(/\(\)/).size * 2
end

p longest_valid_parentheses("()(())") == 6
p longest_valid_parentheses(")(()()()())))((()()()") == 14
p longest_valid_parentheses("") == 0
p longest_valid_parentheses("()") == 2
p longest_valid_parentheses("(()") == 2 
p longest_valid_parentheses(")()())") == 4
p longest_valid_parentheses(")))))") == 0
