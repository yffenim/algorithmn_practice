class Tree
  attr_accessor :sum

  # array of all nodes in the graph
  @@nodes = []
  
  # read method for the class variable @@nodes
  def self.all
    @@nodes
  end

  # sum of all values of nodes
  def sum
    # default sum is 1 because we have 1 node 
    sum = 1

    # if there are more than 1 nodes
    if @@nodes.count > 1
      arr = []
      @@nodes.each do | node |
      arr << node.value 
      sum = arr.sum
    end
    end
    sum
  end

  # print the current Tree
  def print 
    "I am printing?"
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

p one.value
p two.value

p Tree.all
p Tree.new.sum

#three = Tree.new(3)
#four = Tree.new(4)
#five = Tree.new(5)


