# new_string = string.reverse[1...-1]
#
def reverse_smallest_unit(string)
  # iterate through
  # find the first 
  array = string.split("")

  pointer1 = 0
  pointer2 = 0

  array.each_with_index do | char, i |
    if char == "("
      pointer1 = i 
    end 
    if char == ")"
      pointer2 = i
    break
    end 
  end
  p pointer1 
  p pointer2
    
end

find_unit("((123)4)")


