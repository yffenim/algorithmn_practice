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


# Write Method for: Count, Sum, and Print Tree given only its root

  # What is my input? The root.
  # What do I need to count? The entire tree. I need to find out how big the tree is.
  # What do I know about the root? That it has left or right values (and its own value). 
  # Everytime a left or right value exists, this means that there is a new node in the tree that I have discovered
  # So I need to track each new node
  # What is the repetitve aspect of this task? Checking if left or right node exists and incrementing the count by 1 if either exists. This can be done recursively
  # What is the problem with doing this recursively = what happens to my counter?
  # If the recursion is called, this means that I have found a node which means I can incremenet the count simultaneously to the recursion call by passing it in as an arguemt
  # This means that the logic for the recursion call has to be one cohesive entity and not separated by left and right?
  
  # pseudo-code: 
  # base case: no nodes left in node array because all children have been searched
  #
  # recursion:
  # remove the first array element because it is already counted
  # If left child exists or right child exists, 
  # increment count
  # add new node into node array
  # call recursion

  
def count(root, count=1, nodes=[root])
  return count if nodes.empty?
  
  # set new root to the first node
  root = nodes.shift
  
  if root.left != nil 
    count += 1
    nodes << root.left
  end 
  if root.right != nil 
    count += 1
    nodes << root.right
  end
  count(root, count, nodes)
end
  
p count(node_one) == 7
