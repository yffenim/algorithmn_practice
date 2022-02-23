def is_balanced?(string)
  return true if string.empty?
  return true if string[0] == "(" && string[1] == ")"
  return false if string[1] == "(" && string[0] == ")"
  return false if !string.include? ("()")
  
  bool = false
  count = 0 

  loop do 
    if string[count] == "("
      bool = false
    elsif string[count] == ")"
      bool = true 
    end
    count += 1
    break if count == string.length - 1 || string.length == 2
  end
  bool
end

p is_balanced?("") == true 
p is_balanced?("()") == true 
p is_balanced?(")(") == false
p is_balanced?("))") == false
p is_balanced?("(((") == false 
p is_balanced?("((()))") == true
p is_balanced?(")))(((") == false


