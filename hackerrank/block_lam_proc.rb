# CLOSURE: access non-local variables even when invoked outside of its immediate lexical scope
# A group of code that when opened like a suitcase contains whatever was in it when you packed it 



# BLOCK: syntax of a method call, can pass one into method as arg
#
def block_message_printer
    message = "Welcome to Block Message Printer"
    if block_given?
        yield # this is going to yield the message from scope outside the method because that's where message var was defined
    end
  puts "But in this function/method message is :: #{message}" # this will be the message from scope inside of method
end

message = gets
block_message_printer { puts "This message remembers message :: #{message}" }

#####################################################################################

# PROC: object
# call pass multiple procs to methods
# procedure: instructions packaged as a unit to perform a specific task
def proc_message_printer(my_proc)
    message = "Welcome to Proc Message Printer"
    my_proc.call # same as block_given? Returns scope outside of function
    puts "But in this function/method message is :: #{message}" # returns message inside
end


my_proc = proc { puts "This message remembers message :: #{message}" }
proc_message_printer(my_proc)
    
######################################################################################

# LAMBDA: type of PROC object
# anonymous functions, implicit in ruby
    
def lambda_message_printer(my_lambda)
    message = "Welcome to Lambda Message Printer"
    my_lambda.call
    puts "But in this function/method message is :: #{message}"
end

my_lambda = -> { puts "This message remembers message :: #{message}" }
lambda_message_printer(my_lambda)    
    
######################################################################################
