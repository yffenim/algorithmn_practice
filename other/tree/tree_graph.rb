class Tree 
  attr_accessor :node, :edge, :parent
  @@nodes = []
  # initialize with default root node 
  def initialize(node=1, edge=0, parent=0)
    @node = node 
    @edge = edge
    @parent = parent
    @@nodes << self
  end

  def print_sum_all
    arr = []
    sum = 1 #default value of root node
    @@nodes.each do | object |
      arr << object.node 
      sum = arr.sum 
    end
    p sum
  end 
  
  def print_all
    p "Current tree: #{@@nodes}"
  end
end


class Node < Tree

  def initialize(node, edge=1, parent)
    @node = node 
    @edge = edge
    @parent = parent
    node_is_new?
    @@nodes << self
    print_all
  end

  def node_is_new?
    # check if node already exists
    @@nodes.each do |n|
      if n.node == @node
      p "Node already exists!"
      exit
      end
    end
  end


  def parent_exists?
    # validate parent node  is correct
  end

  def parent_available?
    # check if parent already has more than two nodes
  end


end

tree = Tree.new
# node1 =  Node.new(1,1,1)
node2 =  Node.new(2,1,1)


