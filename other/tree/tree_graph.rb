class Tree
  # array of all nodes in the graph
  @@nodes = []
  
  # read method for the class variable @@nodes
  def self.all
    @@nodes
  end

  # sum of all values of nodes
  def sum 
  
  end

  # print the current Tree
  def print 
  end
end 

class Node < Tree
  attr_accessor :value

  # add new node instance to the nodes array
  def initialize(value)
    @value = value
    # default root node for new tree graph with default value of 1
    @@nodes << self
  end

  #def edges
   # "I am an edge"
  #end

  # debug method for displaying object attributes by just calling the object
  # def inspect 
    #"Node value: #{value}"
  #end
end

one = Node.new(1)
two = Node.new(2)

p one
p two

p Tree.all
p Tree.all.count
#three = Tree.new(3)
#four = Tree.new(4)
#five = Tree.new(5)


