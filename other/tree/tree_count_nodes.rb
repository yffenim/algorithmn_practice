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

# re-examine the sum recursion problem and apply to this problem


# sum_of_tree --> another solution (it is actually recursion)
# --> same-tree
# --> binary-tree-path


def count_node(root)
  count = 1  
  # four case
  # 1. I do not have any children
  # 2. 1 left, 0 right
  # 3. 0 left, 1 right
  # 4. 1 left, 1 right
  tree_array = []
    tree_array << root
    # how to represent the "new" root to pass that into the recursion?
    while tree_array.count > 0
      node = tree_array.shift
      # I've removed the first element so now that second element IS the first element

      # an empty array is passing this logic because [].nil? == false
      if node.left != nil
        count += 1
        tree_array << node.left
      end
        # if there is a left child, we want to increment count and make the left child a root so we can do this to that child. 
        # [r.left]
      if node.right != nil
        count += 1
        tree_array << node.right
      end
    end
  count
end

p count_node(node_one) == 7




