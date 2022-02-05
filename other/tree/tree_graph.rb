class Graph
  # allows us to access the value of value
  attr_reader :value

  # default root node for new tree graph with default value of 1
  def initialize(value)
    @value = value
  end

  def edges
    "I am an edge"
  end

  def inspect 
    "Node value: #{value}"
    # add ability to display all children
  end

  def sum
  end

end

test = Graph.new(1)
p test.inspect
