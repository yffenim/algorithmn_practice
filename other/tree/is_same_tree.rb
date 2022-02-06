
def is_same_tree(p, q)
  # iterate through the two arrays and convert them to hashes by mapping the keys to array elements and values to array index 
  # match 
  p_hash = {}
  q_hash = {}
  p.each_with_index do | n, i |
    p_hash[n] = i 
  end
  q.each_with_index do | n, i |
    q_hash[n] = i 
  end
  p_hash == q_hash
end


p is_same_tree([1,2,3], [1,2,3]) == true
p is_same_tree([1,2], [1,nil,2]) == false
p is_same_tree([1,2,1], [1,1,2]) == false
