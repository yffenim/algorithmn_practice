def sum(arr)
  # base condition
  count = arr.count
  if arr.count == 1
    #return arr.sum
    arr[0..count-1].sum
    # arr.sum can also be written as arr[0..count-1].sum
  else
    sum(arr[0..count-2]) + arr[count-1]
    # add the sum of current array minus last item + last item
  end
end

a = [1,2,3,4,5]
p sum(a) == 15

b = [1]
p sum(b) == 1

c = [5]
p sum(c) == 5

d = [0,5]
p sum(d) == 5 





