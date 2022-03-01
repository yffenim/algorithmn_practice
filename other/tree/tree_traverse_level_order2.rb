class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end
# @param {TreeNode} root
# @return {Integer[][]}

# Construct the nodes of the rest of the three
node1 = TreeNode.new(1,nil,nil)
node2 = TreeNode.new(2,nil,nil)
node3 = TreeNode.new(3,nil,nil)
node4 = TreeNode.new(4,nil,nil)
node5 = TreeNode.new(5,nil,nil)
node6 = TreeNode.new(6,nil,nil)

# Construct the edges
node1.left = node2
node1.right = node3 
node2.left = node4
node2.right = node5 
node3.right = node6

def traverse(root)
  


end

traverse(node1)
