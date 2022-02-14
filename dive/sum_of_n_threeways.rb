# Solve the problem of getting the sum of given integer n using iteration, math, and recursion:


# Iteration

def sum_iter(n)
  result = 0
  (0..n).each do | i |
    result += i
  end
  result
end

p sum_iter(10) == 55

# Mathematical
# What makes this more math than the others?
def sum_math(n)
  return n * (n+1) / 2
end

p sum_math(10) == 55


# Recursion
# simplest case: sum(0) = 0
# sum_rec(0) is the base case because at that point, 
# sum_rec(5) = sum_rec(4) + 5
# f(n) = f(n-1) + n

def sum_rec(n) 
  if n == 0
    return 0
  else
  sum = sum_rec(n-1) + n
  end
end

p sum_rec(10) == 55
