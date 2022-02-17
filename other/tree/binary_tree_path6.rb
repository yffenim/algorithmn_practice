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

# base case: no root = no paths 
# a path: current.val.to_s << current.left.to_s 

def binary_tree_paths(root)
  @stack = []
  @result = []
  preorder_traversal(root)
  @result
end

def preorder_traversal(current)
  puts "top of method: #{@stack}"

  # base case 
  return if current == nil
  # add current value to stack
  @stack << current.val
  # puts "add current: #{@stack}"
  # traverse the tree! 
  preorder_traversal(current.left)
  # puts "after left: #{@stack}"
  # puts "this means that a path has been found and the right side is about to be traversed" 

  preorder_traversal(current.right)
  # puts "after right: #{@stack}"
  # once we are done traversing the node, we want to save the path and delete the latest node

  # format results into string if there are no more children because we are at a leaf node
  @result << @stack.join("->") if !current.left && !current.right

  # get rid of the latest element in the stack so we can add the right child if there is one
  @stack.pop
end

p binary_tree_paths(one)
