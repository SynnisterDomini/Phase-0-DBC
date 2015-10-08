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



# 3. Refactored Solution







# 4. Reflection