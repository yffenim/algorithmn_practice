
def is_same_tree(p,q)
  arr_p = []
  arr_p << p.val << p.left << p.right

  arr_q = []
  arr_q << q.val << q.left << q.right
  
  p_hash = {}
  q_hash = {}
  
  arr_p.each_with_index do | n, i |
    p_hash[n] = i 
  end
  arr_q.each_with_index do | n, i |
    q_hash[n] = i 
  end
  p_hash == q_hash
end


