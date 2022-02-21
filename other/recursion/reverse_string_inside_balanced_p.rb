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
  
  array[pointer1..pointer2] = array[pointer1..pointer2].reverse[1...-1]
  # reversed_unit = smallest_unit.reverse[1...-1]
  p array
end

reverse_smallest_unit("((123)4)")


