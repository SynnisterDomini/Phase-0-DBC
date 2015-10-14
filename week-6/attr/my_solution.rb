#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData

	attr_accessor :name

	def initialize(name)
		@name = name
	end

end


class Greetings

	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def greet
		puts "Hello, #{@name}"
	end

end



# # Reflection

# release 1:
# What are these methods doing?

# The methods first call information, then they change the information in the class, and then they call the new information.

# How are they modifying or returning the value of instance variables?

# They return the value using reader code, and modify the value using writer code

# Release 2:
# What changed between the last release and this release?

# One method (check age) was taken out and replaced with attr_reader :age.

# What was replaced?

# the check age method was replaced

# Is this code simpler than the last?

# Yes.

# Release 3:
# What changed between the last release and this release?

# The change age method was commented out and attr_writer :age was added.

# What was replaced?

# the change age method was replaced.

# Is this code simpler than the last?

# Yes, although now the instance variable is both a reader and a writer, so it can be combined into an accessor.

# Release 6:
# What is a reader method?

# A reader method is a method that will only print information and not change it.

# What is a writer method?

# A writer method is a method that will only change information and not print it.

# What do the attr methods do for you?

# Attr methods allow me to combine reader and writer methods

# Should you always use an accessor to cover your bases? Why or Why not?

# No. There are instances where you don't want information to change or be read.

# What is confusing to you about these methods?

# As of right now, I think these new methods are pretty straightforward.