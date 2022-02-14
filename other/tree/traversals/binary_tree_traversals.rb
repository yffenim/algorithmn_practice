# Given this binary tree defined from LeetCode, I want to print out a pre-order, in-order, and post-order traversal of the tree.
#
# Tree object definition
class BinaryTree
  attr_accessor :root

  # Initialize a Binary Tree with given root value
  def initialize(root)
    @root = root
  end

# PreOrder Traversal:
# 1. Visit current node (print)
# 2. Recursively traverse current node's left subtree until leaf
# 3. Recursively traverse current node's right subtree until leaf

# InOrder Traversal:
# 1. Recursively traverse current node's left subtree until leaf
# 2. Visit current node (print)
# 3. Recursively traverse curretn node's right subtree until leaf

# PostOrder Traversal:
# 1. Recursively traverse current node's left subtree
# 2. Recursively traverse current node's right subtree
# 3. Visit current node(print)

  def print_preorder(current)
    return if current.nil?
    # print/visit current node first
    print "#{current.val} "
    print_preorder(current.left)
    print_preorder(current.right)
  end

  def print_inorder(current)
    return if current.nil?
    print_inorder(current.left)
    # print/visit current node once left subtree is traversed
    print "#{current.val} "
    print_inorder(current.right)
  end

  def print_postorder(current)
   return if current.nil?
    print_postorder(current.left)
    print_postorder(current.right)
    # print/visit current node start from the leaf nodes
    print "#{current.val} "
  end
end

# Tree Node object definition
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

tree.print_preorder(root)
tree.print_inorder(root)
tree.print_postorder(root)
