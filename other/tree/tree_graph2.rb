class Tree
  attr_accessor :value
  @@nodes = []
  
  def initialize(value)
    @value = value 
    @@nodes << self
  end

  def sum_all
    arr = []
    sum = 1 #default value of root node
    @@nodes.each do | node |
      arr << node.value 
      sum = arr.sum 
    end
    sum
  end 
  
  def print_all
    @@nodes.each do | node |
      pp node
    end
  end

end

one = Tree.new(1)
two = Tree.new(2)

two.print_all
p two.sum_all
