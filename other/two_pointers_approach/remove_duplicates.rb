# Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same.
#
# check the first element
# check the second element
# if they are the same, remove the first element from array
# if they are different, move onto next pair


def remove_duplicates(num)
  # if the array is empty, return 0
  return 0 if num.empty?
  return num if num.count == 1
  # otherwise, the first idex of the new array will always be index 0 value so do nothing
  # starting the index 1 as the first pointer and index 2 as the second pointer
  count = 1
  pointer1 = num[count]
  length = num.size - 1
  # iterate through array with pointer2 to search for when the value is not the same
  num[2..length].map do | pointer2 |
  # if they are not the same, we want to save the new unique value into the insertion point
    if num[count] != pointer2
  # replace the value of the insertion index element with the second pointer 
      num[count] = pointer2
  
  # increment pointer1 because now our new insertion point is the second index element 
    count += 1
    end
    p num
  end
end




remove_duplicates([1,1,2])
remove_duplicates([0,0,1,1,1,2,2,3,3,4])

