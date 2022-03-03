def next_greatest_el


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
