# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array containing symbols
# Output: a die class that can roll and return the number of sides it has.
# Steps: sides can return the legnth of the array + 1, roll picks a number at random and returns the element associated with it.


# Initial Solution

# class Die
#   def initialize(labels)
#   	@labels = labels
#   	if @labels.count < 1
#   		raise ArgumentError.new("You didn't provide any labels for your die!")
#   	end
#   end

#   def sides
#   	return @labels.count
#   end

#   def roll
#   	return @labels[rand(@labels.count)]
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
  	@labels = labels
    @total_sides = labels.count
  	if @labels.count < 1
  		raise ArgumentError.new("You didn't provide any labels for your die!")
  	end
  end

  def sides
  	return @total_sides
  end

  def roll
  	return @labels[rand(@total_sides)]
  end
end

# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

# Honestly there wasn't much difference, I think that my solution was almsot identical to my previous die class.

# What does this exercise teach you about making code that is easily changeable or modifiable? 

# Having code that you fully understand will allow you to reuse it again and again with minor changes. THe same can probably be said about using other libraries.

# What new methods did you learn when working on this challenge, if any?

# I didn't use any new methods in this challenge.

# What concepts about classes were you able to solidify in this challenge?

# I was able to further understand the fact that similar classes can have similar code.