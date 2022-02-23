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

# Remove all alphnumeric characters without using regex:
def is_palindrome_noregex(s)
  match = "abcdefghijklmnopqrstuvwxyz0123456789"
  array = s.downcase.chars
  new_string = ""

  # I need to check if the array has the characters in my match string
  # String has .include? method to match 

  array.each do | char |
    # if the array element has a match in the alphabet string
    # save it into the new string
    if match.include? char 
      new_string << char 
    end
  end
  new_string == new_string.reverse
end

# puts "no regex:"
#p is_palindrome_noregex("0P") == false
#p is_palindrome_noregex("a.") == true
# p is_palindrome_noregex("6%a$sdf_fd-sa!6") == true
#p is_palindrome_noregex("A man, a plan, a canal: Panama") == true
#p is_palindrome_noregex("abcba*#@^") == true 
#p is_palindrome_noregex("aaba_") == false
#p is_palindrome_noregex("") == true
#p is_palindrome_noregex("aaba_") == false




# Most Concise:
def is_palindrome(s)
  s.gsub(/[^a-zA-Z0-9]/,"").downcase == s.gsub(/[^a-zA-Z0-9]/,"").downcase.reverse
end



# Two-pointers and a while loop without deletion so no array needed

def is_palindrome_noarr(s)
  new_string = s.gsub(/[^a-zA-Z0-9]/,"").downcase
  return true if new_string.empty? || new_string.size == 1 
  pointer1 = 0
  pointer2 = new_string.size-1 
  # match the first and last character for the length of half the array
  # as soon as they are not matched, return false 
  loop do  
    return false if new_string[pointer1] != new_string[pointer2]
    return true if pointer1 == new_string.size/2
    pointer1 += 1
    pointer2 -= 1
  end
end

# puts "no array:"
p is_palindrome_noregex("0P") == false
p is_palindrome_noarr("a.") == true
p is_palindrome_noarr("6%a$sdf_fd-sa!6") == true
p is_palindrome_noarr("A man, a plan, a canal: Panama") == true
p is_palindrome_noarr("abcba*#@^") == true 
p is_palindrome_noarr("aaba_") == false
p is_palindrome_noarr("") == true
p is_palindrome_noarr("aaaa_") == true


# Using two-pointers and a for loop: 
# Runtime: 88 ms, faster than 85.65% of Ruby online submissions for Valid Palindrome.


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

# p is_palindrome?("a.") == true
# p is_palindrome?("6%a$sdf_fd-sa!6") == true
# p is_palindrome?("A man, a plan, a canal: Panama") == true
# p is_palindrome?("abcba*#@^") == true 
# p is_palindrome?("aaba_") == false
# p is_palindrome?("") == true
# p is_palindrome?("aaba_") == false


# Using reverse
def is_palindrome(s)
  return true if s.empty? || s.size == 1
  new_string = s.gsub(/[^a-zA-Z0-9]/,"").downcase
  new_string.reverse ==  new_string ? true : false
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

# puts "reverse method:"
# p is_palindrome("a.") == true
# p is_palindrome("6%a$sdf_fd-sa!6") == true
# p is_palindrome("A man, a plan, a canal: Panama") == true
# p is_palindrome("abcba*#@^") == true 
# p is_palindrome("aaba_") == false
# p is_palindrome("") == true
#p is_palindrome("aaba_") == false

