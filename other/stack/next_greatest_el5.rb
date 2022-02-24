
def next_greatest_el(nums2)
  # return [] if nums1.empty?
  
  result = []
  # return result += ([-1] * nums1.count) if nums2.empty?
  
  stack = [-1]
  hash = {}
  # fill the stack with the intended values of the hash map
  last = -1 
  secondlast = -2

  loop do 
    break if secondlast < -(nums2.count)
    if nums2[last] > nums2[secondlast]
      stack << nums2[last]
      puts "the stack add n: #{stack}"
    elsif nums2[last] < nums2[secondlast]
      if nums2[secondlast] > stack.max
        stack << -1
        # puts "the stack add -1 is: #{stack}"
      elsif nums2[secondlast] < stack.max
        stack.reverse.each do |s|
          if s > nums2[secondlast]
            stack << s 
            break
          end 
        end
        # puts "the stack add max is: #{stack}"
      end
    end 
    last -= 1
    secondlast -= 1
  end
  stack
end

p next_greatest_el([9,7,8,1,6,5,2,4,3]) == [-1,-1,4,-1,-1,6,-1,8,-1]
p next_greatest_el([2,7,3,1,4,5,6,9,8]) == [-1,-1,9,6,5,4,4,9,7]

# p next_greatest_el([4,1,2],[1,3,4,2]) == [-1,3,-11]
# p next_greatest_el([2,4],[1,2,3,4]) == [3,-1]
# p next_greatest_el([1,2,3,4],[9,7,8,1,6,5,2,4,3] == [6,4,-1,-1]

# p next_greatest_el([],[]) == [] 
# p next_greatest_el([],[1]) == []
# p next_greatest_el([1],[]) == [-1]
# p next_greatest_em([1],[1]) == [-1]
# p next_greatest_el([1,2,3,4],[]) == [-1,-1,-1,-1]
# p next_greatest_em([1],[2]) == [-1]
