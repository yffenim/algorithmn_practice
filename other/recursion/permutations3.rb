# given the input as options [1,2,3,4]
# take the first item as the current
# add current to permutated [1]
# delete the first item 
# recursion w/ input of the new array [2,3,4] 
# 
# once all items have been added, change the way the array is arranged
# go through function again

def permutations(input)
  count = input.count
  options = input
  permutations_helper(input, count, options)
end

def permutations_helper(input, count, options, result=[], permutated=[])

  # collect into results when a new permutation is found
  # reset permutated into an empty array
  if permutated.count == count
    result << permutated
    puts "result is #{result}"
    permutated = []
  end
  
  # base case
  return result if input == options
  
  # loop through length of input and collect each index item recursively
  # once collected, change input 
  (0...count).each do | index |
    current = input[index]
    permutated << current
    input.delete_at(index)
    # puts "added #{current} to #{permutated}"
    puts "new input: #{input} and current perm is #{permutated} and result is: #{result}"    
    # call recursion on the current index element to collec it into permutated array
    permutations_helper(input, count, options, result, permutated)
     if input.count == 0
      puts "index: #{index} and current: #{current}"
      last = options.pop
      input = options.insert(0,last)
      # move the last element to the first array 
    end
  end
  result
end

p permutations([1,2,3,4])
