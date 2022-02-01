# A Redo of Calculating the Average Via Recursion

# Using 10DIME:
#
# Input:
# An array of integers.
#
# Output: 
# The average of the array.
# 
# Definitions:
# An average is the sum of all integers / the length of array
#
# Instructions (Pseudo-Code):
# See below.
#
# Methods: N/A
#
# Edge Cases/Exceptions/Examples (tests):
# What ii array is negative numbers?
# What if array is empty?
#
# Solving with Recursion:
# 1. BASE CASE: arr.count == 0
# 2. The function for the recursion: avg = arr.sum/arr.count
# 3. The next-to-last case: arr[0..count-2]
# 4. Take out last case from the recursion line and represent this relationship:

#   count = arr.count
#   avg = arr.sum/count
#   
#   Taking out the last case and representing the relationship:
#   avg_excl_last_num = arr[0..count-2]/count * arr[count-1]
#   
#   What we know: 
#   - the count
#   - the average excluding last arr item
#   - the equation that the avg = sum / count
#   - the value we don't have is the sum so let's try finding it with what we do have:
#
#   sum_excl_last_num =  avg_excl_last_num * count
#
#   - so now we have the sum_excl_last_num. 
#   - What is our goal? Finding the average of all numbers. So the sum we need is the sum_excl_last_num + last_num (to give us the sum of all numbers) 
#
#   sum_of_all_num =  sum_excl_last_num + arr[count-1]
#
#   Then we find the average:
#
#   sum_of_all_num / count
#
def average(arr)
  # base case:
  count = arr.count
  if count == 0
    return 0
  elsif count == 1
    return arr[0]
  else
  # What do we kno?? 

  end
  avg
end 

p average([1]) == 1
p average([0,10]) == 5
p average([1,3,5,7]) == 4
