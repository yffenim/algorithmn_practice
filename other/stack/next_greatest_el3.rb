# Attempt 2
# convert nums2 into hash by mapping keys to array element and values to array el index
# iterate through nums1 and match for nums2
# find next greater element in nums2, return
# if no next greater el, return -1 

def next_greater_element(nums1, nums2)
  nums2_hash = {} 
  nums2.each_with_index do | n ,i | 
    nums2_hash[n] = i
  end
  p nums2_hash 
  
  nums1.each do | n |
    if nums2_hash.include?(n)
      p n
    end
  end
end 


p next_greater_element([2,4],[1,2,3,4]) == [3,-1]
# p next_greater_element([4,1,2],[1,3,4,2]) == [-1,3,-1]

