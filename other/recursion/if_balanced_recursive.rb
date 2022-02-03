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
  string.gsub!("#{match}","")
  # return false if there is only 1 bracket left in the string:
  return false if string.length == 1
  # recursion call:
  is_balanced?(string)
end

p is_balanced?(")))(((") == false
p is_balanced?(")(") == false
p is_balanced?("(((") == false 
p is_balanced?("()") == true 
p is_balanced?("((()))") == true
p is_balanced?("") == true 

