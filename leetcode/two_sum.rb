# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.


# Input: array of integers, an target integer
# Output: array containing the index of two numbers
# Definitions: nums can be negative
# Instructions: The target is the total of the indices of the two numbers.
# Methods:
# Edge Cases:

# IDEAS:
# - iterate through the array tracking with index 
# - add index to stack
# - add second index to stack
# - if they add up to 9, return index, if not remnove the first element from stack

def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |n, i|
    hash[n] = i    
  end
end


p two_sum([2,7,11,15],9) == [0,1]
p two_sum([0,1],1) == [0,1]
p two_sum([3,2,4],6) == [1,2]
p two_sum([3,3],6) == [0,1]
p two_sum([3,2,3],6)


