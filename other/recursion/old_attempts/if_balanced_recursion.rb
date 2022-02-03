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

# recursion for balanced parenthesis problem

# recursion for balanced parenthesis problem

def is_balanced?(input)
  return false if input.empty? 
  # if input is not an array, make it an array
  # this validation exists because my recursion function call accepts an array later nd not a string
  input.class == Array ? input : input = input.chars 

  count = input.count
  return false if count == 1
  
  # base case
  if count == 2
    if input[0] != input[1]
      return true
    else
      false
    end
  elsif count > 2
    p "inside elif"
    input.each_cons(2) do | first, second |
      if first != second 
        input.delete_at(0)
        input.delete_at(1)
        is_balanced?(input)
      else
        is_balanced?(input.shuffle)
      end
    end
  end
end

p is_balanced?("((())") == false
p is_balanced?([1,1,1,0]) == false
p is_balanced?([1,1,1,1]) == false
p is_balanced?([1,1,0,0]) == true
p is_balanced?([1,0]) == true



p is_balanced?("((())") == false
p is_balanced?("(((((") == false
p is_balanced?("((()))") == true

p is_balanced?("") == false
p is_balanced?("(") == false
p is_balanced?("()") == true
p is_balanced?("((") == false


