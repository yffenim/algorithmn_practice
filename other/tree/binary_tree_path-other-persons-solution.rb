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


def binary_tree_paths(root)
  paths = []
# the smallest unit is a node without children as the full path in itself
  return paths << root.val.to_s if root.left.nil? and root.right.nil?
  
  if root.left
    puts "inside of left: #{paths}"
    binary_tree_paths(root.left).each do |path|
      puts "inside loop, current left path to be mapped is: #{path}"
      paths << "#{root.val.to_s}->#{path}"
    puts "after left map, paths are: #{paths}"
    end
  end
  if root.right
    puts "inside of right: #{paths}"
    binary_tree_paths(root.right).each do |path|
      puts "inside loop, current right path to be mapped is: #{path}"
      paths << "#{root.val.to_s}->#{path}"
    puts "after right map: #{paths}"
    end
  end
  paths
end


p binary_tree_paths(one)
