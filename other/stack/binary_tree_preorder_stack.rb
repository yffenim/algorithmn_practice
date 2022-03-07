# Tree object definition
class BinaryTree 
  attr_accessor :root 
  
  # Initialize a Binary Tree with given root value
  def initialize(root)
    @root = root 
  end 

  def preorder_traversal(root)
    puts "inside the pre!"
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

p tree.preorder_traversal(root)
