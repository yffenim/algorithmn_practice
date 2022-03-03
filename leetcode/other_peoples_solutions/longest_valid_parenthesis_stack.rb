def longest_valid_parentheses(s)
  # initialize stack with -1 value WHY?
  stack = [-1]
  max = 0

  s.chars.each_with_index do |char, i| 
    # if we have opening bracket, add the index to the stack 
    if char == "("
      puts "inside left braket"
      stack << i
      puts "added #{i} to #{stack}"
    else # closing, get rid of the last stack 
      puts "inside right bracket"
      puts "removing #{stack.last} from #{stack}"
      stack.pop
      # if the stack is currently empty, then this means it was only "()" and we want to add the current index back into stack to count it 
    if stack.empty?
      stack << i 
      puts "added #{i} to #{stack}"
    else 
    # find the max between the last number, the current index, and last item in stack?
      puts "arr: #{max}, #{i}, #{stack.last}"
      max = [max, i - stack.last].max 
    end 
  end 
end 
end


p longest_valid_parentheses("())(())()") == 6

