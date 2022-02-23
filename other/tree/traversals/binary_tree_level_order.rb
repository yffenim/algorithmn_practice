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

# result should be [1,2,3,4,5,6]

# top-down approach, moving by level
# (1) start at root, save root value 
# (2) go to next level
# (3) repeat step 1-2 recursively until there are no more levels 
# BASECASE: no more levels
# function: save all the node values of the current level nodes 
# recursion: do the same thing for the nodes of the next level 

# SMALLEST TREE
# Input: root = all the node objects of level 1
# Output: root.val in an array = all the root values of level 1 

# Given this small tree, can I find the next tree? 
# Input: [root.left, root.right]
# Output: [root.left.val, root.right.val]


########## RECURSIVE SOLUTION ###########

def level_order(root)
    return [] if root.nil?
    find_next_level([root], []).flatten
end

def find_next_level(nodes, result)
    # no more levels
    return result if nodes.empty?
    # save the current level nodes into result
    result << nodes.map{|node| node.val}
    # find the next node levels and format them into a flat array, remove nil, then pass into recursive function call
    next_level_nodes = nodes.map{|node| [node.left, node.right]}.flatten.compact
  # continue to save the current level nodes and then find the next level until there are no more levels
    find_next_level(next_level_nodes, result)
end

p level_order(node1) == [1,2,3,4,5,6]
### Time/Space Complexity Analysis
# 2 x iterations: O(2n)? except 2n is an absolute speed thing
# Is it still O(n) because even if the input is doubled, the RATE of increase is the same (linear) 
# But what about the recursive part???

########## ITERATIVE SOLUTION ###########

def level_order_iterative(root)
  return [] if root.nil?
  result = [[root]]
  
  index = 0
  
  while result[index] != nil do
  # go to the next level in the result array
    index += 1
  # iterate through array of objects from current level
    result[index-1].each_with_index do |node, i|
  # check if there is another level, if so:
  # add node objects of next level to the result array 
      if node.left != nil || node.right != nil
      # add an [] to contain the objects of the next level
        result[index] ||= []
      # collect the node objects if they exist
        result[index] << node.left if node.left != nil
        result[index] << node.right if node.right != nil
      end

      # replace the collected node objects from the results array with its value iteratively 
      result[index-1][i] = node.val
    end
  end
  result.flatten
end

p level_order_iterative(node1) == [1,2,3,4,5,6]

### Time/Space Complexity Analysis
# time: only 1 iterative so O(n)
# space: 
