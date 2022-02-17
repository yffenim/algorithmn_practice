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
