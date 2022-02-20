class TreeNode
  attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
    end
end

one = TreeNode.new(1,nil,nil)
two = TreeNode.new(2,nil,nil)
three = TreeNode.new(3,nil,nil)
four = TreeNode.new(4,nil,nil)
five = TreeNode.new(5,nil,nil)

one.left = two 
one.right = three
two.left = four 
two.right = five 

# [1,2,4 1,2,5 1,3]

# Goal: All Possible Paths in Tree
# Input: Root
# What do I know? Root has access to left or right child node meaning that teh Root is Tree

# Input: Root
# Output: All Possible Paths
# Smallest Unit of the Problem/Last case: Tree with no children aka Leaf aka Root
# Second-to-Last Case: adding parent to leaf
# Function: Find the Leaf Node, add its parent (this is a path)
# With the solution to this function, we can apply it to the rest of the tree

# this is a path solved recursively:
# (root + (root + (root + leaf node )))


def binary_tree_paths(root, path = '')
  return [] unless root

  # if leaf node, return the path as an array + the leaf node value because the current path is complete
  return result_array = [path + root.val.to_s] unless root.left || root.right

  binary_tree_paths(root.left, path + "#{root.val}->") + binary_tree_paths(root.right, path + "#{root.val}->")

end

p binary_tree_paths(one)

# Everytime recursion is called, you are passing in a new child node and the current path which is the current node (root) value and "->"

# First call: 
# binary_tree_paths(node1.left, path + root.val ->)
# at this point, path is: "1->"

# Second call:
# binary_tree_paths(node2.left, path + root.val)
# at this point, path is: "1->2->" because the current root.val is 2

# Third call: 
# binary_tree_paths(node4.left, path + root.val)
# at this point, path is: "1->2->4" because the current root.val is 4

# Forth call: left node is DONE, so we go to right child
# binary_tree_paths(node4.right, path + root.val)
# there is no right child so we go back a node
# path is: "1->2->4"
# turn this path into an entry into the array

# Fifth call: 
# binary_tree_paths(node2.right, path + root.val)
# at this point, path is: "1->2->" because the path value being passed in is the same as the value from the SECOND call for node2.left
# current root.val is 5
# the path is now: "1->2->5" 
# NO MORE CHILDREN so we add this path to the results_array?
