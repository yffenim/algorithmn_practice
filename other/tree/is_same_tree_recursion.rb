# Iterative method was done by thinking about what makes two trees the same tree. But what makes two trees NOT the same tree?
# Return false if:
# - the root node is not the same
# - the left node is not the same
# - the right node is not the same
# Any one of these conditions means that the tree is not the same tree

# Definition for a binary tree node.
  class TreeNode
     attr_accessor :val, :left, :right
     def initialize(val = 0, left = nil, right = nil)
         @val = val
         @left = left
         @right = right
     end
  end

one = TreeNode.new(1,2,3)
two = TreeNode.new(1,2,3)
three = TreeNode.new(1,3,2)
four =  TreeNode.new(1,nil,2)

def is_same_tree(p,q)
  # check if the current nodes are the same by cmparing their values for val, left, and right
  return false if p.val != q.val
  return false if p.left != q.left 
  return false if p.right != q.right 
  return true if p && q
  # is_same_tree(p,q)
end

p is_same_tree(one,two) == true
p is_same_tree(one,three) == false
p is_same_tree(one,four) == false
