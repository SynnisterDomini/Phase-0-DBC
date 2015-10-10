# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?

# The input is an array containing integers or strings.

# What is the output? (i.e. What should the code return?)

# The output is an array with each entry of the input that shows up the most amount of times.

# What are the steps needed to solve the problem?


# 1. Initial Solution

# def mode (input)
# 	hash = Hash.new
# 	answer = Array.new
# 	#number = input.count(1)
# 	input.count {|k| hash[k] = input.count(k) }
# 	hash.each {|k,v| answer.push(k) if v == hash.values.max}
# 	return answer
# end

# mode ([1,1,2,3,4,4,5,5,6])



# 3. Refactored Solution

def mode (input)
	hash = Hash.new
	answer = Array.new
	#number = input.count(1)
	input.count {|k| hash[k] = input.count(k) }
	hash.each {|k,v| answer.push(k) if v == hash.values.max}
	return answer
end

#mode ([1,1,2,3,4,4,5,5,6])


# 4. Reflection

# Which data structure did you and your pair decide to implement and why?

# We decided to impliment a hash because we would be able to attatch multiple keys to a value and return all relevant information.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

# Both times we were quite successful, so not really.

# What issues/successes did you run into when translating your pseudocode to code?

# There wasn't much in terms of issues, we originally tried implimenting an array but we quickly learned that would not work out.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# We used a count method and an each method. Both methods are ones that we have used before and as such they were not difficult to implement.