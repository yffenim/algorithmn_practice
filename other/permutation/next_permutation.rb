# Input: an array of intergers nums 
# Output: next permutation of nums 
# Definitions: the next permutation of an array of integers is the next "lexicographically greater permutation of its integer > it is the next one in the sorted array of possible permutations
# Instructions:
# - needs to be done in place
# - use only O(1)
# - 
# Methods: 
# - 
# Edges Cases: empty array

def next_permutation(nums)
  return nums if nums.length < 2

  pointer1 = -1
  pointer2 = -2 
  
  until pointer2 == -nums.count do 
    puts nums[pointer2]
    pointer2 -= 1  
  end


end

next_permutation([6,4,2,5,3])
# p next_permutation([6,2,3,5,4]) == [6,2,4,3,5]
# p next_permutation([1,2,3]) == [1,3,2]
# p next_permutation([3,2,1]) == [1,2,3]
# p next_permutation([1,1,5]) == [1,5,1]
# p next_permutation([]) == []
# p next_permutation([0) == [0]
# p next_permutation([1]) == [1]
# p next_permutation([1,1,1]) == [1,1,1]


