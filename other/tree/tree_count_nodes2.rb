  
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

node_one = TreeNode.new(1,nil,nil)
node_two = TreeNode.new(2,nil,nil)
node_three = TreeNode.new(3,nil,nil)
node_four = TreeNode.new(4,nil,nil)
node_five = TreeNode.new(5,nil,nil)
node_six = TreeNode.new(6,nil,nil)
node_seven = TreeNode.new(7,nil,nil)

node_one.left = node_two
node_one.right = node_three

node_two.left = node_five
node_two.right = node_six

node_three.right = node_four

node_six.left = node_seven
