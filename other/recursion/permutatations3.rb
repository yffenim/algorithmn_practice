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
  permutated = [] 

  (0...count).each do | index |
    current = input[index]
    permutated << current
    input.shift
    puts "new input: #{input}"
    permutations(input)
    "after permutations, index is #{index} and input is #{input}"
  end

end
