# define a binary tree with each node having attributes of a value, left node, and right node.
# the tree has a known root to start
class BinaryTree 
  
  def initialize(root)
    @root = root 
  end

  def count_nodes(root)
    # visit each node
    # add count when each node is visited
    # return count 
    count = 0
    return count if !root
    count += 1
    count_nodes(root.left) if root.left
    count_nodes(root.right) if root.right
    puts "count is #{count}"
  end

end


class TreeNode
  attr_accessor :val, :left, :right 
  def initialize(val=nil, left=nil, right=nil)
    # counter
    @val = val
    @left = left
    @right = right
  end

end


# Construct the nodes of the rest of the three
root = TreeNode.new(1, nil, nil)
node2 = TreeNode.new(2,nil,nil)
node3 = TreeNode.new(3,nil,nil)
node4 = TreeNode.new(4,nil,nil)
node5 = TreeNode.new(5,nil,nil)

# Construct the edges
root.left = node2 
root.right = node3 
node2.left = node4
node2.right = node5 


tree = BinaryTree.new(root)
p tree.count_nodes(root)
