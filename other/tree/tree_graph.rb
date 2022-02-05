class Graph
  
  # default root node for new tree graph
  def intialize(value=1)
    @value = value
  end

  def edges
    "I am an edge"
  end

end

test = Graph.new
p test
p test.edges
