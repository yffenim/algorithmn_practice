# Given the root of a binary tree, return all root-to-leaf paths in any order. A leaf is a node with no children.
#
# 10GDIME
#
# Input: the root of a tree
# Output: An array of strings, each string being a unique root-to-leaf path
# Goal: Traverse to each leaf node once
# Definitions: A leaf node has no children. 
# Implementation: 
# The important part is that we only get traverse to each leaf node once.
# 1. Start at root. 
# 2. Look for left child. If there is a left child, go there. This is the new root.
# 3. Call recursion.
# 4. Return the collected root values in the appropriate format
#

def binary_tree_paths(root, nodes=[root], paths=[])
  return paths if nodes.empty?
  # search for left child 
  if root.left != nil
    # add discovered root to nodes 
    nodes << root.left
    # add left child value to paths array 
    paths << root.left.val
    # we want to keep searching for the left child from the new node 
    root = root.left 
    # call recursion with new root
    binary_tree_paths(root, nodes, paths)
    # finished all left children paths
  end
  
  if root.right != nil 
    nodes << root.left
    paths << root.right 
    root = root.right.val
    binary_tree_paths(root, nodes, paths)
  end

  if root.right == nil && root.left == nil 
    # return to the parent node
    previous_node = nodes.count-2
    root = previous_node
    # add the path up to parent node to paths 
    paths << nodes[0..count-3]
    binary_tree_paths(root, nodes, paths)
  end
  
end

p binary_tree_paths(node1) == ["1->2->5","1->3"]
p binary_tree_paths(node5) == ["1"]#
