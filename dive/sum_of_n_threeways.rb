# Solve the problem of getting the sum of given integer n using iteration, math, and recursion:


# Iteration

def sum(n)
  result = 0
  (0..n).each do | i |
    i += n 
  end
end

p sum(10) 

