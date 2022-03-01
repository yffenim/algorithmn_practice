def injecting
  # the 1 is the base to start the operation
  # the enumerable is n 
  # the product is because that's our block operation
  (5..10).inject(1) do |product, n| 
    puts "current product is: #{product}"
    puts "current n is: #{n}"
    product * n 
  end
end

p injecting

