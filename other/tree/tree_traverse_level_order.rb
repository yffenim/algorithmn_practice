# Pre-order transversal to find all leaf notes in a tree
# - (1) start at root node, save this value
# - (2) IF: check left child, if it exists, traverse there, call recursion.
# - (3) ELSIF: check right child, if it exists, traverse there, call recursion. 
# - (4) No child: save string of node values into array.

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# example 1 tree
tree1node1 = TreeNode.new(1, nil, nil)
tree1node2 = TreeNode.new(2, nil, nil)
tree1node3 = TreeNode.new(3, nil, nil)
tree2node1 = TreeNode.new(1, nil, nil)
tree2node2 = TreeNode.new(2, nil, nil)
tree2node3 = TreeNode.new(3, nil, nil)

tree1node1.left = tree1node2
tree1node1.right = tree1node3

tree2node1.left = tree2node2
tree2node1.right = tree2node3

# example 2 tree 
tree3node1 = TreeNode.new(1, nil, nil)
tree3node2 = TreeNode.new(2, nil, nil)
tree4node1 = TreeNode.new(1, nil, nil)
tree4node2 = TreeNode.new(2, nil, nil)

tree3node1.left = tree3node2 

tree4node1.right = tree4node2

# example 3 tree
tree5node1 = TreeNode.new(1, nil, nil)
tree5node2 = TreeNode.new(2, nil, nil)
tree5node3 = TreeNode.new(1, nil, nil)
tree6node1 = TreeNode.new(1, nil, nil)
tree6node2 = TreeNode.new(2, nil, nil)
tree6node3 = TreeNode.new(1, nil, nil)

tree5node1.left = tree5node2
tree5node1.right = tree5node3

tree6node1.left = tree6node3
tree6node1.right = tree6node2

# another TreeNode
node1 = TreeNode.new(1,nil,nil)
node2 = TreeNode.new(2,nil,nil)
node3 = TreeNode.new(3,nil,nil)
node4 = TreeNode.new(4,nil,nil)
node5 = TreeNode.new(5,nil,nil)
node6 = TreeNode.new(6,nil,nil)
node7 = TreeNode.new(7,nil,nil)

node1.left = node2
node1.right = node3
node2.left = node4
node3.left = node5
node3.right = node6
node4.left = node7

# method for level order traversal (Breadth-First)
def tree_traverse(root, nodes=[root], tree=[1])
  return tree if nodes.empty?
  # set root to the first node
  root = nodes.shift
  # search for children and save into array
  if root.left != nil 
    nodes << root.left
    tree << root.left.val
  end 
  if root.right != nil 
    nodes << root.right
    tree << root.right.val
  end
  tree_traverse(root, nodes, tree)
end

p tree_traverse(tree1node1)
p tree_traverse(tree3node1)
p tree_traverse(tree4node1)
p tree_traverse(tree5node1)
p tree_traverse(tree6node1)



