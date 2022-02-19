# Write a function that reverses a string. The input string is given as an array of characters s.

# You must do this by modifying the input array in-place with O(1) extra memory.

# O(1) memory means that the space usage is constant. This means we need to not be initializing a new array for the result but modifying the current array in-place.

# Input: a string 
# Output: a reversed string 

# I want to take the first element of the array and compare it to the next element. It if is "smaller" (earlier in alphabet), I want to switch places.

# This needs to happen until there are no switches left: what does no switches left mean?

# This can be done recursive because I can pass the solution of each switch function into the same function until there are no more switches

def reverse_string(s)
  # 
end

p reverse_string(["h","e","l","l","o"]) == ["o","l","l","e","h"]
p reverse_string(["H","a","n","n","a","h"]) == ["h","a","n","n","a","H"]
p reverse_string([]) == [] 
p reverse_string(["a"]) == ["a"]

