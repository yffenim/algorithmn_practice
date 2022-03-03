def longest_valid_parentheses(s, count=0)
  match = s.scan(/\(\)/)

  # base case - no more matches of balanced brackets
  return count if match.empty?

  #  remove all matches
  new_str = s.gsub("\(\)","")
  # puts "new string is: #{new_str}"

  # count the removed matches
  count += match.join.length
  puts "count is #{count}"

  longest_valid_parentheses(new_str, count)
end

p longest_valid_parentheses("(((())))")

p longest_valid_parentheses("(((())))") == 8
p longest_valid_parentheses("()(())") == 6
p longest_valid_parentheses(")(()()()())))((()()()") == 14
p longest_valid_parentheses("") == 0
p longest_valid_parentheses("()") == 2
p longest_valid_parentheses("(()") == 2 
p longest_valid_parentheses(")()())") == 4
p longest_valid_parentheses(")))))") == 0
