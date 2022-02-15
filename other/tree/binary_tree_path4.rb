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

def find_paths(current, current_path="")
  current_path = current_path
  
  # everytime I get to a leaf, i have finished a path and should add that to the paths array
  # everytime I get to a node, I should save it to the current path being constructed AND add "->" 

  # when to add "->"? If current exists and children exist so i need the current to be a loop


  # save node to current path if it exists
  if current != nil
    current_path << current.val.to_s
    # current_path << "->"
    # puts current_path
    # check if there are NO children 
     if current.left == nil && current.right == nil 
      # if no children, path is completed so add the current_path to paths array
      puts current_path
      print_paths(current_path)
     else
      # if there ARE children, the path continues so we want to add the "->"
      current_path << "->"
    end
  # check if this is the leaf
  find_paths(current.left, current_path)
  find_paths(current.right, current_path)
  end
end

def print_paths(path)
  results = []
  results << path
  p results
end 

find_paths(one)
print_paths(one)

