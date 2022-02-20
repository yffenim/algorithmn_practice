def find_max_consecutive_ones(nums)
  return 0 if nums.empty? 
  ref = nums.find_index(1)
  # check to see if there is a 1 with find_index
  # if there is no 1, ref will be nil and we can return 0  
  return 0 if !ref 

  # save the index of the first appearance of case 1
  pointer = ref 

  # right now, we know that max is 1 
  max = 1 

  # loop through the array starting from the first appearance of cases 1 to the end
  while pointer < nums.length
    # if the next value is 0 
    if nums[pointer] != 1
      # if the current index value minus the starting index value is greater than the current max, then return this value as the new max value
      # otherwise, keep old max value
      max = pointer - ref > max ? i - ref : max

      # search for the next case 1 
      # set a new starting index for loop
      next_pointer = pointer
      # loop through nums array starting from j and as long as we don't find a 1, increment j to keep looping
      while next_pointer < nums.length && nums[j] != 1
          next_pointer += 1
      end
      # if we never find another case 1 
      return max if next_pointer == nums.length

      # if we do find another case 1, the new starting index for the count of consecutive 1's is the next_pointer
      ref = next_pointer
      # set the search pointer also the start at the new index
      pointer = next_pointer 
    end
    pointer += 1 # increment loop 
    # at this point, the reference index starts at the latest case of 1
    # the pointer is incremented so that we can loop through starting from there
  end
  # check if current max is greater or if the number of elements between the case 1 (ref) and the end of the array, if so, return max, if not return the i-ref 
  return max > i-ref ? max : i-ref
end

p find_max_consecutive_ones([0,0,1])

p find_max_consecutive_ones([]) == 0
p find_max_consecutive_ones([1]) == 1
p find_max_consecutive_ones([0]) == 0
p find_max_consecutive_ones([0,1]) == 1
p find_max_consecutive_ones([0,0,1]) == 1
p find_max_consecutive_ones([0,0,0]) == 0
p find_max_consecutive_ones([1,1]) == 2

p find_max_consecutive_ones([1,0,1,1,0,1]) == 2
p find_max_consecutive_ones([1,1,0,1,1,1]) == 3
p find_max_consecutive_ones([1,0,1,1,0,1]) == 2
