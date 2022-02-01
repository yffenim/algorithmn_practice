# Find average using recursion

# 1. Find base case
# the average of the first num in the array
# arr[0]
# 2. Find function for base case
# arr[0..count-1].sum/count
# 3. Find next-to-last case
# arr[0..count-2].sum/count
# 4. Write recursion line by taking out the next-to-last case from base case
# average(arr[0..count-2])

def average(arr)
  count = arr.count
  if count == 1
    arr[0..count-1].sum/count
  else
    sum = average(arr[0..count-2])) * arr[0..count-1].sum
  end
  sum / count
end

# array sum / array length
# sum of array-1 / array length-1 * array-1




a = [1,2,3,4,5]
p average(a) == 3

b = [0,10]
p average(b) == 5 

c = [1]
p average(c) == 1
