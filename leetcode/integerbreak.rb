# Given an integer n, break it into the sum of k positive integers, where k >= 2, and maximize the product of those integers.

# Return the maximum product you can get.

# INPUT: integer n
# OUTPUT:integer p for product of sum of k positive integers
# DEFINITIONS: "break it into the sum of k positive integers then maximize the product" meaning that you want the highest product and that is how you are choosing the k positive integers so the question is how to choose the biggest positive k? 

def integer_break(n)
  return 0 if n == 0 
  return 1 if n <= 2 
  product = nil 

  product = n/3 * n/3 * n/3 if n%3 == 0

  if n%3 != 0
    x = n/3
    product = x * x * (x + 1) if n - (3 * x) == 1
    product = x * (x + 1) * (x + 1) if n - (3 * x) == 2
  end
  product  
end 

p integer_break(10) == 36 # 3 x 3 x 4 
p integer_break(2) == 1 # 1 x 1 
p integer_break(1) == 1 
p integer_break(0) == 0 
p integer_break(15) == 125 # 5 x 5 x 5

p integer_break(20) == 294
p integer_break(21) == 343
p integer_break(22) == 392
