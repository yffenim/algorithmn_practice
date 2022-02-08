



# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

one = TreeNode.new(1)
two = TreeNode.new(2)
tree = TreeNode.new(3)
four = TreeNode.new(4)
five = TreeNode.new(5)

def binary_tree_paths(root)
  
end

binary_tree_paths([1,2,3,nil,5]) == ["1->2->5","1->3"]

