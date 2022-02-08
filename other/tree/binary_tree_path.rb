# Spend 80% of the time understanding the problem and 20% of the time implementing the solution:

# Start 9:15am
# 10DIME
#
# Input: The root array containing the values of all the nodes.
# 
# Output: All root-to-leaf paths in any order.
# 
# Definitions: The root is the first node. The leaf is a node with no chidren. The path is the root to a leaf node. 
# 
# Instructions:
# - figure out how to identify each unique path, which really means, how to find each leaf node because that is the endpoint of each unique path
# - use pre-order transversal
# - (1) start at root node, save this value
# - (2) IF: check left child, if it exists, traverse there, call recursion.
# - (3) ELSIF: check right child, if it exists, traverse there, call recursion. 
# - (4) No child: save string of node values into array.
#
# Methods: 
#
# Edge Cases + write examples (tests): 
# - empty tree

# Definition for a binary tree node.

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

one = TreeNode.new(1)
two = TreeNode.new(2)
tree = TreeNode.new(3)
four = TreeNode.new(4)
five = TreeNode.new(5)

def binary_tree_paths(root)
  
end

binary_tree_paths([1,2,3,nil,5]) == ["1->2->5","1->3"]

