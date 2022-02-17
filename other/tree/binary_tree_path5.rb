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

# base case: no root = no paths 
# a path: current.val.to_s << current.left.to_s 

def binary_tree_paths(root)
  result = []
  return result unless root

  # start the current path with root
  path = root.val.to_s
  # path is now "1"

  # if there are no more children, path is done
  if root.left == nil && root.right == nil
    result << path 
  end
  
  # look for paths from the next child node onwards starting with the left tree then right tree
  # if root.left != nil
    path_1 = find_path(root.left, path, result)
    puts "I am the return from the find_paths method: #{path_1}"
  # end 
  #if root.right != nil 
    find_path(root.right, path, result)
  #end
  result
end

# the return value for this method needs to the path
def find_path(current, path, result)
  # the result is currently empty 

  # save the current node into the current path
  new_node_found = "->" + "#{current.val.to_s}"
  path << new_node_found
  puts "I am the path at start of method: #{path}"
  # BASE CASE: we have reached a leaf node and found a path so recursion can stop now
  if current.left == nil && current.right == nil
    # save the current path 
    result << path 
    puts "I am the path at leaf node: #{path}"
    # return the path as the result of this method
    return result
  end
  # keep finding if there are new child nodes
  # if current.left != nil 
    find_path(current.left, path, result)
  # end 
  # if current.right != nil
    find_path(current.right, path, result)
  # end
end



# p find_path(one)
binary_tree_paths(one)


