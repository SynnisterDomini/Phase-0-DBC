# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: the correct answer.
# Output: whether the other answer was too high or two low
# Steps:


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @lastguess = nil
#   end

#   def guess(input)
#   	@lastguess = input
#   	if @lastguess == @answer
#   		# puts "Congratulations! You guessed it!"
#   		return :correct
#   	elsif @lastguess < @answer
#   		# puts "Nope! Your guess is too low!"
#   		return :low
#   	elsif @lastguess > @answer
#   		# puts "Nope! Your guess is too high!"
#   		return :high
#   	end
#   end

#   def solved?
#   	if @lastguess == @answer
#   		#print true
#   		return true
#   	else
#   		#print false
#   		return false
#   	end
#   end
# end

# drivercode
# a = GuessingGame.new(10)
# a.solved?
# a.guess(1)
# a.solved?
# a.guess(100)
# a.solved?
# a.guess(10)
# a.solved?


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @lastguess = nil
  end

  def guess(input)
  	@lastguess = input
  	if @lastguess == @answer
  		return :correct
  	elsif @lastguess < @answer
  		return :low
  	elsif @lastguess > @answer
  		return :high
  	end
  end

  def solved?
  	if @lastguess == @answer
  		return true
  	else
  		return false
  	end
  end
end

# Reflection

# # How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# Everyday objects have actions (which relate to methods) and characteristics (which relate to variables) that are specific to that individual object.
# Instance variables and methods simulate that information in a program.

# # When should you use instance variables? What do they do for you?

# Use an instance variable when you are going to look for the varaiable elsewhere within the object. They allow you to obtain specific information within an object without requiring a definition outside of the object.

# # Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# Flow control is basically ensuring that each and every piece of a program has the information it needs to function. If it needs a variable, then the variable is defined in the proper manner before it is called.
# I didn't really have trouble with flow control in this challenge, I more had trouble with comparison signs, but luckily I was able to figure it out.

# # Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# The code wanted me to return symbols because those symbols actually make the code more readable. (Humans understand them better)