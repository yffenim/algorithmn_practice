# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

# Given a string s, return true if it is a palindrome, or false otherwise.
#
# Input: a string with possible uppercase, lowercase, and non-alphanumeric characters
# Output: boolean of whether the string is a paline
# Ideas: 
# (1) solve with two pointers where we match the first and last element in the array and move towards the center
# (2) the easy way with ruby reverse 

# Follow-Up Question:
#
# Why is

# `return true if array.empty? || array.size == 1`
# faster than
# `if array > 1
# else
# return true
# end`


# Using two-pointers and a for loop: 
# Runtime: 88 ms, faster than 85.65% of Ruby online submissions for Valid Palindrome.
# Memory Usage: 215.8 MB, less than 17.49% of Ruby online submissions for Valid Palindrome.


def is_palindrome?(s)
  return true if s.empty? || s.size == 1

  new_string = s.gsub(/[^a-zA-Z0-9]/,"").downcase
  array =  new_string.chars
  
  return true if array.empty? || array.size == 1
  for x in (0..array.size/2) do
    if array.first == array.last 
      array.pop
      array.shift
      return true if array.empty? || array.size == 1
    else 
      return false
    end
  end
end

p is_palindrome?("a.") == true
p is_palindrome?("6%a$sdf_fd-sa!6") == true
p is_palindrome?("A man, a plan, a canal: Panama") == true
p is_palindrome?("abcba*#@^") == true 
p is_palindrome?("aaba_") == false
p is_palindrome?("") == true
p is_palindrome?("aaba_") == false
# Using reverse
def is_palindrome(s)
end

# Using two-pointers and an each loop
# Why this does not work? Because my logic depends on deleting first and last element
# but in the loop, my iteration already makes that array index move happen
# so I am being redundant in moving pointer1 by both iteration and delete

def is_palindrome_each(s)
  return true if s.empty? || s.size == 1

  new_string = s.gsub(/[^a-zA-Z0-9]/,"").downcase
  array =  new_string.chars
  pointer1 = 0
  
  return true if array.empty? || array.size == 1
  array.map do | char |
    puts "matching #{char} with #{array.last}"
    if char == array.last
      array.pop
      puts "array after pop: #{array}"
      array.shift
      puts "array after shift: #{array}"
      puts "the current array is: #{array}"
      return true if array.empty? || array.size == 1
    end
  end
  false
end

# p is_palindrome_each("a.") == true
# p is_palindrome_each("6%a$sdf_fd-sa!6") == true
# p is_palindrome_each("A man, a plan, a canal: Panama") == true
# p is_palindrome_each("abcba*#@^") == true
# p is_palindrome_each("aaba_") == false
# p is_palindrome_each("") == true
# p is_palindrome_each("aaba_") == false

