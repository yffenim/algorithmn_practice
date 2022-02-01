# The recursion function

# def compare(array)
 # array.each_with_index do |n, i|
  #  if array[i] != array[i+1]
    #  array.delete_at(i)
     # array.delete_at(i+1)
    #end
  #end
#end

# recursion for balanced parenthesis problem

def is_balanced?(input)
  return false if input.empty? 
  
  # if input is not an array, make it an array
  # this validation exists because my recursion function call accepts an array later and not a string
  input.class == Array ? input : input = input.chars 
 
  count = input.count
  return false if count.odd?

  # base case:
  if count == 0
    true
  else 
    
  end
end

p is_balanced?("") == false
p is_balanced?("(") == false
p is_balanced?("(,)") == true
p is_balanced?("(,(,(,),)") == false
p is_balanced?("(,(,(,(,(") == false
p is_balanced?("(,(,(,),),)") == true
