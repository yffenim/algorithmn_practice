# Fibonacci sequence is a type series where each number is the sum of the two that precede it:
# 0, 1, 1, 2, 5, 8, 13, 21, etc.
# Given num, print fib n
def fibonacci(num)
  # base case if num is less than two, return num
  if number < 2 
    num 
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end 

p fibonacci(5) == 5
p fibonacci(0) == 0
p fibonacci(6) == 8
