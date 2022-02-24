
def next_greatest_el(nums1,nums2)
  return [] if nums1.empty?
  
  result = []
  return result += ([-1] * nums1.count) if nums2.empty?
  
  hash = {}

  




end

# p next_greatest_el([4,1,2],[1,3,4,2]) == [-1,3,-11]
# p next_greatest_el([2,4],[1,2,3,4]) == [3,-1]
#p next_greatest_el([1,2,3,4],[9,7,8,1,6,5,2,4,3] == [6,4,-1,-1]

p next_greatest_el([],[]) == [] 
p next_greatest_el([],[1]) == []
p next_greatest_el([1],[]) == [-1]
#p next_greatest_em([1],[1]) == [-1]
p next_greatest_el([1,2,3,4],[]) == [-1,-1,-1,-1]
# p next_greatest_em([1],[2]) == [-1]
