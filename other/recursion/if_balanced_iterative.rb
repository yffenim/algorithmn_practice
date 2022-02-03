  # pseudo-code:  
  
  # initialize hash to store pattern to match
  # iterate through loop and match left brackets, save into result array
  # same iteration, match right brackets and  if it matches, remove the matching pair from the result array
  # if array is empty in the end, we have a balanced string

def is_balanced?(string)  
  # initialize hash to store bracket match
  brackets = {'('=>')'}

  # initialize array to store results of matching
  result = []

  # Iterate through string to match each character to the left and then right bracket
  string.each_char do | char |
    # matching for left bracket 
    if brackets.key? char
      # save character into array
      result << char 
    # matching for right bracket
    elsif brackets.value? char
    # this bracket needs to be compared to the last element in the result array.
    
    # if result array is empty, exit false
    return false if result.empty?

    # How do access the last item in the result array? result.pop 
    # If the last item in the array is NOT the same as this item, we have a match
    # what do we do with match? We remove it. This is done by .pop and by not saving the current char. 
    result.pop != char ? true : false
    end
  end
  result.empty?
end

p is_balanced?(")))(((") == false
p is_balanced?(")(") == false
p is_balanced?("(((") == false 
p is_balanced?("()") == true 
p is_balanced?("((()))") == true
p is_balanced?("") == true 

