# Given this binary tree defined from LeetCode, I want to print out a pre-order, in-order, and post-order traversal of the tree.
class BinaryTree 
  attr_accessor :root 
  
  # Initialize a Binary Tree with given root value
  def initialize(root)
    @root = root 
  end 

# Inorder Traversal: The left subtree is processed before the current node and the right subtree is after the current node 
# - traverse left subtree until leftmost leafnode, then visit root node, then do the same for the right subtree of every node 

 def print_inorder_with_recursion(current)
    return if current.nil?

    print_inorder_with_recursion(current.left)
    print "#{current.data} "
    print_inorder_with_recursion(current.right)
  end
end

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# Initialize a root node 
root = TreeNode.new(1,nil,nil)

# Construct the nodes of the rest of the three
node2 = TreeNode.new(2,nil,nil)
node3 = TreeNode.new(3,nil,nil)
node4 = TreeNode.new(4,nil,nil)
node5 = TreeNode.new(5,nil,nil)

# Construct the edges
root.left = node2 
root.right = node3 
node2.left = node4
node2.right = node5 

# Initialize a Binary Tree 
tree = BinaryTree.new(root)

pp tree
