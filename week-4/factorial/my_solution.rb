# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  if number == 0
  	return 1
  else
  	factor = Array.new
  	final = 1
  	while number > 0
  		factor.push(number)
  		number -= 1
  	end
  	factor.each { |i| final *= i}
  	return final
  end

end