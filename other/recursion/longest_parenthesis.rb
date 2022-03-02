def longest_valid_parentheses(s)
  # return 0 if s.empty?
  match = s.scan(/\(\)/)

  # recursively remove all matches
  new_s = 
  match.join.length  
end

# p longest_valid_parentheses(")(()()()())))((()()()") 
p longest_valid_parentheses("()(())") == 6
p longest_valid_parentheses(")(()()()())))((()()()") == 14
p longest_valid_parentheses("") == 0
p longest_valid_parentheses("()") == 2
p longest_valid_parentheses("(()") == 2 
p longest_valid_parentheses(")()())") == 4
p longest_valid_parentheses(")))))") == 0
