# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# The input is an integer
# What is the output? (i.e. What should the code return?)
# The code should return a string with commas between every 3 numbers.
# What are the steps needed to solve the problem?
# Turn the integer into a string, reverse it, put a comma every 3 numbers, reverse again.



# 1. Initial Solution
# def separate_comma(number)
# 	if number > 0 && number < 1000
# 		string = number.to_s
# 		return string
# 	elsif number >= 1000 && number < 1000000
# 		string = number.to_s
# 		string.reverse!
# 		string.insert(3, ",")
# 		string.reverse!
# 		return string
# 	elsif number >= 1000000 && number <1000000000
# 		string = number.to_s
# 		string.reverse!
# 		string.insert(3, ",")
# 		string.insert(7, ",")
# 		string.reverse!
# 		return string
# 	end
# end

# 2. Refactored Solution

def separate_comma(number)
	if number > 0 and number < 1000
		string = number.to_s
		return string
	else
		string = number.to_s
		string.reverse!
		split = string.chars.each_slice(3).map(&:join)
		together = split.join(",")
		together.reverse!
		return together
	end
end



# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

# Originally, I simply turned the integer into a string, and depending on the value of the integer, I inserted a comma in the correct position.
# However, this method is very limited. In my refactored solution, I reversed the string (for positioning), seperated it into an array with 3 chunks each, and put it back as a string with commas in between each item in the array. 

# Was your pseudocode effective in helping you build a successful initial solution?

# Yes, but a very limited one because my knowledge of methos in ruby is still lacking.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

# I used the chars and slice methods to split up the string, reverse in order to get the positioning right, and join to put everything back toegether.

# How did you initially iterate through the data structure?

# I used insert, which is not a very good way of doing it.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# Most definately. My refactored solution is not only more concise, it applies to almost any number.