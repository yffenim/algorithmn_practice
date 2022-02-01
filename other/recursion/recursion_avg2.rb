# Find average of array of numbers using recursion

def average(arr)
  # base case:
  count = arr.count
  if count == 0
    return 0
  elsif count == 1
    return arr[0]
  else
    # average = arr.sum / arr.count
    # arr.sum = average * arr.count
    # sum_excl_last_num = average(arr[0..count-2]) * (count-1)
    
    # sum_of_all_num = sum_excl_last_num + arr[count-1]
    
    # average = sum_of_all_num / count

    # refactoring the above steps:
    sum_of_all_num = average(arr[0..count-2]) * (count-1) + arr[count-1]
    avg = sum_of_all_num / count
  end
end 

p average([1]) == 1
p average([0,10]) == 5
p average([1,3,5,7]) == 4
