x = 0
while x <= 99
x = x + 1
if x == 1
	puts "Bang"
	elsif x == 10 or x == 100
	puts "BuzzBang"
	elsif x % 3 == 0 && x % 5 == 0
	puts "FizzBuzz"
	elsif x % 3 == 0
	puts "Fizz"
	elsif x % 5 == 0
	puts "Buzz"
else puts x 
	
end
end