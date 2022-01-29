# Chapter 10: Recursively recurse with recursion

# Accept the number. Display the number from 10 to 0.

# Use a loop
def loop(num):
  for x in range(num):
    print(x)

loop(5)


# recursive version
def loop(num):
  print(num)
  if num == 0:
    return num
  else:
    loop (num = num - 1)

loop(5)
