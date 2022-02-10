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

# sum_of_tree --> another solution (it is actually recursion)
# --> same-tree
# --> binary-tree-path

def tree_sum(root, sum=1, nodes=[root])
  # access root value of given root and save it into the sum var 
  # find left child, if exists, add to sum
  # store the left child into array because we still need to search for the next child from the left child 
  # find right child, if exists, add to sum
  # store the right child into array 
  # call recursion 
  return sum if nodes.empty?
  # set root to the first node
  root = nodes.shift
  # search for children and save into array
  if root.left != nil 
    sum += root.left.val
    nodes << root.left
  end 
  if root.right != nil 
    sum += root.right.val
    nodes << root.right
  end
  tree_sum(root, sum, nodes)
end

p tree_sum(node_one) == 28


