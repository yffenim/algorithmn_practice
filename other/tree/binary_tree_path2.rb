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
#
