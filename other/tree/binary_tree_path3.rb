# GOAL: find all paths. A path is the root to leaf node. Therefore, until I get to a leaf node, I am on a path and should save it. Once I get to a leaf node, I should start a new path.

# methods for working with strings:
#

# pseudo-code
# - start at root
# - add current node to results array
# - is there a left child?
# - IF YES: add a connector "->" and pass left child into recursion call
# - ELSIF is there a right child? "->" pass right child  into recursion call
# - ELSif NO CHILD = LEAF NODE: go back to root (delete self?)
#
#
#
