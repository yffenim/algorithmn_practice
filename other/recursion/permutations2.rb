

def permute(options, result=[], tracker=[true, true, true], temp=[])
  return result if tracker.all? { |x| x == false }

  for i in (0...options.length) do 
    if tracker[i] == true
      puts "inside loop"
      temp << options[i]
      tracker[i] = false
      # puts "tracker: #{tracker}"
    elsif tracker[i] == false
    end
  end
  
  if temp.count == 3 
    result << temp
    puts "result: #{result}"
    temp = [] 
    last = options.shift
    options << last
    tracker=[false,true,true]
  end
  puts "options: #{options}"

  permute(options, result, tracker, temp)
end


p permute([1,2,3])
