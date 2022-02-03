# Write a method that accepts a string containing open or closed parenthesis and returns true if the string has a balanced set of parenthesis. Use recursion if possible.

# First implement via iteration
def is_balanced?(string)
  return false if string.empty?   
    arr = string.chars.delete_if { |s| s == "," }
  if arr.count.odd?
    false
  else 
    left = []
    arr.each do |bracket|
      if bracket == "("
        left << bracket
        arr.delete(bracket)
      end
    end
    left.count == arr.count ? true : false
  end
end

p is_balanced?("") == false 
p is_balanced?("(,(,(") == false
is_balanced?("(,(,(,),),)") == true

p is_balanced?("(,)") == true
p is_balanced?("(,(,(,),)") == false
p is_balanced?("(") == false 
p is_balanced?("(,(,(,(,(") == false



