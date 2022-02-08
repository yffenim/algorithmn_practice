
# Pre-order transversal to find all leaf notes in a tree
# - (1) start at root node, save this value
# - (2) IF: check left child, if it exists, traverse there, call recursion.
# - (3) ELSIF: check right child, if it exists, traverse there, call recursion. 
# - (4) No child: save string of node values into array.

def preorder_traversal(root)

end

preorder_traversal([1,2,3,4,5,6,7]) == [4,5,6,7]
preorder_traversal([1,2,nil,4,5]) == [4,5]
preorder_traversal([1,2,3,4,nil,nil,7]) == [4,7]
preorder_traversal([1,2,3]) == [2,3]
preorder_traversal([1]) == [1]



