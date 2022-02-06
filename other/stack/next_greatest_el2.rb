
  def next_greater_element_helper(array)
    result = -1
    array.each_with_index do |n, i|
      break if array[i+1] == nil
      if array[i] < array[i+1]
        result = array[i+1]
        break
      end
    end
    result
  end 

  def next_greater_element(nums1, nums2)
    # iterate through nums1 and nums2
    # if there is a match, save that array index 
    # create a new array from num2 start from that Index. For example: when 2 and 2 match, the new array is [2,3,4] - the return we want is 3 from the helper method 
    # save the return from helper method to results array
    # if there is no match, save -1 into results array
    
    new_array = []
    result = []
    # starting index for new array to be passed into the helper method
    index = 0
    length = nums2.count-1
    # map replaces the original array
    nums1.map do | num1 | 
      nums2.each_with_index do | num2, i |
        # if the element is the last in the array, return -1 because there is no comparable el
        if i == length
          result << -1
        # if the element matches, return the next greatest element
        elsif num1 == num2
          p "inside"
          index = i
          new_array = nums2[index..length]
          p new_array
          p num1 = next_greater_element_helper(new_array)
          result << num1
          break
        end
      end
    end
    p result
  end


# p next_greater_element_helper([1,3,5,2,4]) == [3,5,-1,4,-1]
# p next_greater_element_helper([2,3,6,1]) == [3,6,-1,-1]

p next_greater_element([2,4],[1,2,3,4]) == [3,-1]
p next_greater_element([4,1,2],[1,3,4,2]) == [-1,3,-1]

