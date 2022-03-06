# put "(" into stack by index 
# if ")" is found, check if the last item from array is "("
# if it is "(", then (1) pop last index (2) call max (3) save max result 
# if it is NOT "(", then pop last index and add current index into stack

def longest_valid_parentheses(s)
  return 0 if s.length < 2
  
  stack = [-1]
  max = [] 
  result = 0 

  s.chars.each_with_index do | p, i |
    if p == "("
      stack << i 
    end
  end
  p stack
end

longest_valid_parentheses("))())(())()")
