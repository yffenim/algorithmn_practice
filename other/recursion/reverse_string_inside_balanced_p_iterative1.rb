
def reverse_string_iterative(string)
  array = string.chars
  stack = []
  poiner1 = 0 
  reversed = []
  
  array.delete("(")
  remove_at_index = []

  array.each_with_index do |char, i|
    if char != ")"
      remove_at_index << i
    end 
    if char == ")"
      reversed = array[0...i].reverse
      array.delete_at(i)
      puts "reversed: #{reversed}"
      break
    end
  end 
  puts "remove_at_index: #{remove_at_index}"
  
  array = array.reject.with_index do |char, i| 
    remove_at_index.include? i 
  end 
  array = reversed + array

end

p reverse_string_iterative("((aabcc))")
# p reverse_string_iterative("()") == ""
# p reverse_string_iterative("(ab)") == "ba"
# p reverse_string_iterative("(cd)(ab)") == "dcba"
# p reverse_string_iterative("((cd)(ab))") == "abcd"
# p reverse_string_iterative("(a(bc)((de))f)") == "fedbca"
