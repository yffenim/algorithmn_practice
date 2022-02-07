# Rewrite using recursion

# conditions in which both trees are the same: 
# - both are empty
# - both are the same 
# otherwise: check if they are the same

def is_same_tree(p,q)
  # if 
  if p == q
    true
  else
    false
  end
  
end

p is_same_tree([1,2,3],[1,2,3]) == true
p is_same_tree([1],[1]) == true
p is_same_tree([1,nil,2],[1,2,nil]) == false
p is_same_tree([1],[]) == false
