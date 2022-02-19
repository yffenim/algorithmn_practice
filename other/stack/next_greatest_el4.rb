def find_max_consecutive_ones(nums)
    return 0 if nums.empty?
    return 0 if nums.empty? || nums[0] == 0

    result = 1
    stack = [1]
    
    nums.each_with_index do | num, i |
        if nums[i] == nums[i+1]
        # add the both elements to the stack
            puts "these are equal: #{nums[i]} = #{nums[i+1]}"
            stack << nums[i+1]
            puts "the stack is: #{stack}"
        elsif nums[i] != nums[i+1] # if the elements are not same
        # count the stack and save it in the results variable if greater
        puts "inside not the same: #{stack}"
        if stack.count > result 
            result = stack.count 
            stack = [1]
        else 
          stack = [1]
        end
        end
    end 
    result
end

p find_max_consecutive_ones([1]) == 1
p find_max_consecutive_ones([0]) == 0
p find_max_consecutive_ones([1,0,1,1,0,1])
p find_max_consecutive_ones([1,1,0,1,1,1])
p find_max_consecutive_ones([1,0,1,1,0,1])
