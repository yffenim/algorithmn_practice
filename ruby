# pseudo-code

# set a regex pattern to match for '()'
# iterate through loop, match for the pattern 
# remove the matches
# nevermind iteration, this could totally be recursive since we are removing the same regex pattern match every loop

def is_balanced?(string)
  # set regex pattern for matching 
  match = "\(\)"

  # base case: 
  return true if string.empty?
  # function that describs the match
  # match for '()' and if it exists, remove it by replacing it with empty quotes
  my_string = string.gsub("#{match}","")
  return false if my_string == string
  # need a return for if there are no matches but string is still full of brackets
  # ???
  # return false unless string["#{match}"] does not work?

  # recursion call:
  is_balanced?(my_string)
end

p is_balanced?(")))(((") == false
p is_balanced?(")(") == false
p is_balanced?("(((") == false 
p is_balanced?("()") == true 
p is_balanced?("((()))") == true
p is_balanced?("") == true 

