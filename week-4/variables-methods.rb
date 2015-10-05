def full_name_greeting (first, middle, last)
	return "Hello, " + first.to_s + " " + middle.to_s + " " + last.to_s
end

def better_number
	print "What's your favorite number?"
	number = gets.chomp
	puts "What if I told you that " number + 1 " was bigger?"
end

# How do you define a local variable?

# you define a local variable by stating that they equal a value. (example, hello = nil)

#How do you define a method?

# methods are defined by saying def method_name (argument1, argument2, etc)

#What is the difference between a local variable and a method?

#Local variables are values that can change, methods are specific actions that can be repeated.

#How do you run a ruby program from the command line?

#type ruby "ruby_program_name.rb"

#How do you run an RSpec file from the command line?

# Type rspec "rspec_file_spec_.rb"

#What was confusing about this material? What made sense?

#The most confusing part was getting the ruby environment to run on my computer. After that, everything was like codeacademy.
#
#links to code: 
#
#https://github.com/SynnisterDomini/Phase-0-DBC/blob/master/week-4/make_address/my_solution.rb
#https://github.com/SynnisterDomini/Phase-0-DBC/blob/master/week-4/math/my_solution.rb