
  def next_greater_element_helper(array)
    result = nil
    array.each_with_index do |n, i|
      break if array[i+1] == nil
      if array[i] < array[i+1]
        result = array[i+1]
        break
      end
    end
    result
  end 

  def next_greater_element(array)
    next_greater_element_helper(array)
  end

p next_greater_element([1,2,3,4]) == 2
p next_greater_element([3,1,4,2]) == 4

