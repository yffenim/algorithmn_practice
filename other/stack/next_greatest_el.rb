
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

