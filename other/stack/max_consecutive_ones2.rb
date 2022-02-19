def find_max_consecutive_ones(nums)
  return 0 if nums.empty?
  # iterate through array to find the first 1 
  # if 1 is found, add 1 to stack
  # compare to next element 
  # if the next elememt is 1, add 1 to stack
  # compare to next elememt
  # if next element is not 1, count stack, save to  result if it is greater than current result 
  # return result
  stack = []
  result = 0

  nums.each_with_index do | num, i |
    if nums[i] == 1 
      stack << nums[i]
      if stack.count > result 
        result = stack.count 
      end
    else 
      if stack.count > result 
        result = stack.count 
      end
      stack = []
    end
  end
  p result
end

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
