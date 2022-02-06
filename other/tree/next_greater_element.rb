# 10DIME
#
# Input: 2 different arrays where num1 is a subset of nums2 meaningthat nums2 contains the objects in nums1
#
# Output: array that is the length of the first array where each element in the array is the next greater element
# 
# Definitions:

# Instructions:
# for each item in the first array, find the INDEX (j) of the equivalent object in the second array and determine the next greater element of num2[j].
#
# If there is no next greater element, return -1
#
# So I need to:
# - iterate through first array
# - nested iteration of second array
# - if there is a match, save the array item, continue to iterate through second array
# - if there is a greater element, push into results array
# - if not, push -1 into results array
#
# Methods:
#
# Edges Cases/Examples:
# 
#
def next_greater_element_helper(array)
  result = []
  array.each_with_index do |n, i|
    break if array[i+1] == nil
    if array[i] < array[i+1]
      result << array[i+1]
    else
      result << -1
    end
  end
  result << -1
end 

p next_greater_element_helper([1,3,5,2,4]) == [3,5,-1,4,-1]
p next_greater_element_helper([2,3,6,1]) == [3,6,-1,-1]

