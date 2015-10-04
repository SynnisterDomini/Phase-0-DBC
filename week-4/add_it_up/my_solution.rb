# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers or strings
# Output: sum or combined string
# Steps to solve the problem.
# Seperate the array into sections and then add them.
#
# 1. total initial solution
def total (numbers)
	i = 0
	numbers.each {|number| i+= number}
	return i
end



# 3. total refactored solution
#n/a


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: one combined string
# Steps to solve the problem.


# 5. sentence_maker initial solution
#def sentence_maker (words)
#	i = ""
#	words.each {|word| i+= word}
#	return i


# 6. sentence_maker refactored solution
def sentence_maker (words)
	i = ""

	words.each {|word| i+= word.to_s + " "}
	i = i[0..-2]
	return i.capitalize + "."
end
