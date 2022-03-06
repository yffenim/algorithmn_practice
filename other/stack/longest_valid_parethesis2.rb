# put "(" into stack by index 
# if ")" is found, check if the last item from array is "("
# if it is "(", then (1) pop last index (2) call max (3) save max result 
# if it is NOT "(", then pop last index and add current index into stack

def longest_valid_parentheses(s)
  return 0 if s.length < 2
  
  stack = [-1]
  max = 0
  array = s.chars

  array.each_with_index do | p, i |
    if p == "("
      stack << i 
    else # p == ")"
      stack.pop
      if stack.empty?  
        stack << i
      else
        max = [max, i-stack.last].max
      end
    end
  end
  max
end

p longest_valid_parentheses("(())")
p longest_valid_parentheses("))())(())()")
