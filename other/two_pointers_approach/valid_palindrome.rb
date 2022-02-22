# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

# Given a string s, return true if it is a palindrome, or false otherwise.
#
# Input: a string with possible uppercase, lowercase, and non-alphanumeric characters
# Output: boolean of whether the string is a paline
# Ideas: 
# (1) solve with two pointers where we match the first and last element in the array and move towards the center
# (2) the easy way with ruby reverse 

def is_palindrome?(s)
  # check if 
  # remove all non-alphanumeric charaacters and spaces and make lowercase
  # set pointers and match
  # logic for even/odd
 
  new_string = s.gsub!(/[^a-zA-Z0-9]/,"").downcase
  # new_string.each_chars
  # length = new_string.size
  pointer1 = 0
  pointer2 = new_string.size - 1
  

end

p is_palindrome?("6%a$sdf_fd-sa!6")
p is_palindrome?("A man, a plan, a canal: Panama")
# is_palindrome()
# is_palindrome()
