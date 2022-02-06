
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

  def next_greater_element(array)
    
    next_greater_element_helper(array)
  end

p next_greater_element([2,4],[1,2,3,4]) == [3,-1]
p next_greater_element([4,1,2],[1,3,4,2]) == [-1,3,-1]

