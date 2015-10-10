# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? Input is an array, the expected minimum size, and a filler value.
# What is the output? (i.e. What should the code return?) Code should return an array that's the minimum size, with all new entries equal to the filler value.
# What are the steps needed to solve the problem?

# Check if the array is smaller than the minimum size, if so, add the filler value, and repeat until the array is the minimum size.
# Then figure out how to repeat nondestructively, to a local variable

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  	if array.count<min_size
  	 	array.push(value)
  	 	pad!(array,min_size,value)
  	else
  		print array
  		return array
  end
end
# randomarray = [1,2,3,2,3,5]
# pad!(randomarray, 10, "apple")
# print randomarray

# def pad(array, min_size, value = nil) #non-destructive
#   if array.count < min_size
#   	newarray = array
#   	newarray.push(value)
#   	pad(newarray, min_size, value)
#   else
#   	newarray = array.dup
#   	return newarray
#   end
# end

# randomarray = [1,2,3,2,3,5]
# print randomarray
# pad(randomarray, 10, "apple")
# print randomarray

# 3. Refactored Solution

def pad(array, min_size, value = nil) #non-destructive
  if array.count < min_size
  	newarray = array.dup
  	newarray.push(value)
  	pad(newarray, min_size, value)
  else
  	newarray = array.dup
  	return newarray
  end
end

# 4. Reflection


# Were you successful in breaking the problem down into small steps?

# Yes. It took some thinking, but eventually it worked out.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

# Yes, translating the pseudocode into regular code was not too hard, the hard part was finding out how to make an array with a different objectid with the same content as the original array.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# My original solution was successful for the destructive method, but not the nondestructive method. I had trouble with the nondestructive method because I did not realize that making one array equal another would tie them to the same objectid

# When you refactored, did you find any existing methods in Ruby to clean up your code?

# I found out the array.dup command, that's not really a method but seriously helped me out on the second part of the challenge.

# How readable is your solution? Did you and your pair choose descriptive variable names?

# I feel my solution is quite readable, although I do have commented out driver code. The variable names are simplie and direct.

# What is the difference between destructive and non-destructive methods in your own words?

# Destructive methods will modify the original input, non-destructive methods will leave the original input untouched.
