
def next_greatest_el(nums1,nums2)
  return [] if nums1.empty?
  
  result = []
  return result += ([-1] * nums1.count) if nums2.empty?
  
  stack = [-1]
  
  last = -1 
  secondlast = -2

  until secondlast < -(nums2.count) do
    # if n is greater than n prior then add n to stack
    stack << nums2[last] if nums2[last] > nums2[secondlast]
    # if n is not greater than n prior, then check if it is the current max
    if nums2[last] < nums2[secondlast]
      # n is the current max so there is no greater n after, add -1
      if nums2[secondlast] > stack.max
        stack << -1
      # n is not the current max so find the next greatest el
      else nums2[secondlast] < stack.max
        stack.reverse.each do |s|
          if s > nums2[secondlast]
            stack << s 
            break
          end 
        end
      end
    end 
    last -= 1
    secondlast -= 1
  end

  # intialize hash with nums2 array and stack array as k:v 
  hash = nums2.zip(stack.reverse).to_h
  
  # iterate through nums1, replace elements with values from hash
  # wtf @ this map here vs each here???
  nums1 = nums1.map { |e| hash.fetch(e,e) }
end

# p next_greatest_el([9,7,8,1,6,5,2,4,3]) == [-1,-1,4,-1,-1,6,-1,8,-1]
# p next_greatest_el([2,7,3,1,4,5,6,9,8]) == [-1,-1,9,6,5,4,4,9,7]

p next_greatest_el([4,1,2],[1,3,4,2]) == [-1,3,-1]
p next_greatest_el([2,4],[1,2,3,4]) == [3,-1]
p next_greatest_el([1,2,3,4],[9,7,8,1,6,5,2,4,3]) == [6,4,-1,-1]

p next_greatest_el([],[]) == [] 
p next_greatest_el([],[1]) == []
p next_greatest_el([1],[]) == [-1]
p next_greatest_el([1],[1]) == [-1]
p next_greatest_el([1,2,3,4],[]) == [-1,-1,-1,-1]
