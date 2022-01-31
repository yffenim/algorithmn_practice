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


def average(arr, count)
  if count == 1
    arr[0..count-1].sum/count
  else
    average(arr[0..count-2].sum / (count-1)) * arr[0..count-1].sum
  end
end

a = [1,2,3,4,5]
a_count = a.count
p average(a, a_count) == 3

b = [0,10]
b_count = b.count
p average(b, b_count) == 5 

c = [1]
c_count = c.count
p average(c, c_count) == 1
