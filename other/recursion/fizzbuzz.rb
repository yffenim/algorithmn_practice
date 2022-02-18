# Write a program that prints the numbers from 1 to 100 and for multiples of ‘3’ print “Fizz” instead of the number and for the multiples of ‘5’ print “Buzz”. 

def fizz_buzz(num)
  for i in 0..100 do  
  # print each number that is diviible by 3
    if i % 3 == 0 
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else 
      puts i
    end
  end
end

fizz_buzz(100)
