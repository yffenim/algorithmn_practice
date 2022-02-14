# Given this binary tree defined from LeetCode, I want to print out a pre-order, in-order, and post-order traversal of the tree.

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

node1 = TreeNode.new(1,nil,nil)
node2 = TreeNode.new(2,nil,nil)
node3 = TreeNode.new(3,nil,nil)
node4 = TreeNode.new(4,nil,nil)
node5 = TreeNode.new(5,nil,nil)

node1.left = node2 
node1.right = node3 
node2.left = node4
node2.right = node5 

# Inorder Traversal 

# Preorder Traversal 

# Postorder Traversal 
