# What is the difference between Lambda and procs?
# https://stackoverflow.com/questions/1740046/whats-the-difference-between-a-proc-and-a-lambda-in-ruby

# DIFFERENCE 1: procs will not check # of arguments passed in
p = Proc.new { |x, y| puts x; puts y }
# p.call 1,2
# p.call 1
# p.call 1,2,3

l = lambda { | x, y | puts x; puts y }
l.call 1,2
# l.call 1 # will return arg error 


# control flow keywords

def my_method
  puts "before proc"
  # define the proc to return the function before the after proc puts
  my_proc = Proc.new do 
    puts "inside proc"
    return
  end 
  my_proc.call 
  # the final puts is not executed because the return dumps us out of the method entirely
  puts "after proc"
end

my_method

# exact same method only the lambda return only dumps us out of the lambda itself
def my_method_l
  puts "before proc"
  my_proc = lambda do
    puts "inside proc"
    return
  end
  # the puts afterwards will still execute aka enclosing method continues executing
  my_proc.call
  puts "after proc"
end

my_method_l
