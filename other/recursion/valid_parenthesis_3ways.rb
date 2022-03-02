# input: String 
# output: boolean 
# Find matching pairs of: '(', ')', '{', '}', '[' and ']'

# idea 1: use hash map to store the matches, iterate through and match 
# idea 2: use hash map and resursively remove matches  
# idea 3: use counter and loop through 

############# 1: Hash Map #############
def valid_parenthesis(s)


end
############# 2: Recursive #############




############# 3: Counter #############



def is_balanced?(string)
  return true if string.empty?
  return false if !string.include? ("()")
  count = 0 

  for index in (0..string.length-1) do 
    string[index] == "(" ? count += 1 : count -= 1
  end
  count == 0 ? true : false
end

p is_balanced?("") == true 
p is_balanced?("()") == true 
p is_balanced?(")(") == false
p is_balanced?("))") == false
p is_balanced?("(((") == false 
p is_balanced?("((()))") == true
p is_balanced?(")))(((") == false
