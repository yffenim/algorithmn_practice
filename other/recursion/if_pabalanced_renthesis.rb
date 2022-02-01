# Write a method that accepts a string containing open or closed parenthesis and returns true if the string has a balanced set of parenthesis. Use recursion if possible.

# First implement via iteration

def is_balanced?(string)
  return false if string.empty?   
    arr = string.chars.delete_if { |s| s == "," }
  if arr.count > 0 && arr.count.odd?
    p "inside odd" 
  else 
    p "inside even"
  end
end

p is_balanced?("") == false 
is_balanced?("(,(,(")
is_balanced?("(,(,(,),),)")

# puts is_balanced?("(,)") == true
# puts is_balanced?("(,(,(,),)") == false
# puts is_balanced?("(") == false 
# puts is_balanced?("(,(,(,(,(") == false
