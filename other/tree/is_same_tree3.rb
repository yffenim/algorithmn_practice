class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# example 1 tree
tree1node1 = TreeNode.new(1, nil, nil)
tree1node2 = TreeNode.new(2, nil, nil)
tree1node3 = TreeNode.new(3, nil, nil)
tree2node1 = TreeNode.new(1, nil, nil)
tree2node2 = TreeNode.new(2, nil, nil)
tree2node3 = TreeNode.new(3, nil, nil)

tree1node1.left = tree1node2
tree1node1.right = tree1node3

tree2node1.left = tree2node2
tree2node1.right = tree2node3

# example 2 tree 
tree3node1 = TreeNode.new(1, nil, nil)
tree3node2 = TreeNode.new(2, nil, nil)
tree4node1 = TreeNode.new(1, nil, nil)
tree4node2 = TreeNode.new(2, nil, nil)

tree3node1.left = tree3node2 

tree4node1.right = tree4node2

# example 3 tree
tree5node1 = TreeNode.new(1, nil, nil)
tree5node2 = TreeNode.new(2, nil, nil)
tree5node3 = TreeNode.new(1, nil, nil)
tree6node1 = TreeNode.new(1, nil, nil)
tree6node2 = TreeNode.new(2, nil, nil)
tree6node3 = TreeNode.new(1, nil, nil)

tree5node1.left = tree5node2
tree5node1.right = tree5node3

tree6node1.left = tree6node3
tree6node1.right = tree6node2

# tests
p is_same_tree(tree1node1,tree2node1) == true
p is_same_tree(tree2node1,tree3node1) == false
p is_same_tree(tree4node1,tree5node1) == false

# 10GDIME
#
# Input: the root of two trees
# Output: whether they are the same tree
# Goal: Compare the values and structures of the two trees. 
# 
# Definitions: What makes the trees different?
# - if they have different child structure, i.e. their left and right do not match
# - if they have different values in a node, i.e. the structure matches but the node value does not
# 
# Implementation:
# - 
#
#
# Methods: 
# - What is the repetitive part of this? The actual traversal part of solving the problem. Therefore, we can use recursion 
