# Binary Tree from Leetcode
# Implementing Count

class TreeNode
# set read and write access to the val, right, and left instances of the TreeNode object thereby making them mutable and accessible outside of the class
  attr_accessor :val, :left, :right

# initialize an object of TreeNode class with the params val, left, and right set to default values
  def initialize(val = 0, left = nil, right = nil)
# save the params into instance variables that can be used in TreeNode class
    @val = val
    @left = left
    @right = right
  end
end

# Initialize nodes of a new tree
node_one = TreeNode.new(1,nil,nil)
node_two = TreeNode.new(2,nil,nil)
node_three = TreeNode.new(3,nil,nil)
node_four = TreeNode.new(4,nil,nil)
node_five = TreeNode.new(5,nil,nil)
node_six = TreeNode.new(6,nil,nil)
node_seven = TreeNode.new(7,nil,nil)

# Define edge between nodes of the tree
node_one.left = node_two
node_one.right = node_three

node_two.left = node_five
node_two.right = node_six

node_three.right = node_four

node_six.left = node_seven


# Write Method for: Count, Sum, and Print Tree without using class variables















