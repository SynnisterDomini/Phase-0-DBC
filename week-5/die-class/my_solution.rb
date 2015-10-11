# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(number_of_sides)
  	@faces = number_of_sides
    if number_of_sides < 1
    	raise ArgumentError.new("Must have sides greater than or equal to 1.")
    end
  end

  def sides
    return @faces
  end

  def roll
    return 1 + rand(@faces)
  end
end

# 20_sided_die=Die.new(20)
# 20_sided_die.sides
# 20_sided_die.roll

# 3. Refactored Solution

# I'm not really sure how to refactor the solution.





# 4. Reflection

# What is an ArgumentError and why would you use one?

# An argumenterror is when an error is returned specifically because the argument prerequisites for a metheod or class are not met.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# I didn't really implement any new methods except for rand, which returns a random number.

# What is a Ruby class?

# A ruby class is like a method, but instead of performing a function, it creates a variable with a huge amount of information, which can include almost anything, including methods.

# Why would you use a Ruby class?

# I would use a ruby class in order to create unique reacurring objects that have similar variables but different values for each variable.

# What is the difference between a local variable and an instance variable?

# A local variable is called specifically within a method. An instance variable is created within a class.

# Where can an instance variable be used?

# Instance variables can be used in classes, and they can be called by using [name_of_class.name_of_variable].