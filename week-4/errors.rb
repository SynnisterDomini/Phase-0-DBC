# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
#the error is the error.rb file.
#The line that the error occurs is line 8
#The error message is a syntax error, unexpedcted =, and expecting an end of input.
#The interpreter shows where the unexpected equals sign was.
#The definition and the variable are switched in order, so the compiler returned an error.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end


# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The file with the error is errors.rb.
#
# 2. What is the line number where the error occurs?
# The line where the error occurs is line 175
#
# 3. What is the type of error message?
# The error message says that there is an unexpected end of input, and they were expecting the keyword end.
#
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter tells me that it was expecting the keyword end at the end of the text.
#
# 5. Where is the error in the code?
# The error is at the very end of the code.
#
# 6. Why did the interpreter give you this error?
# The interpreter gave me this error because the method needs an end to finish being defined.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# line 46
#
# 2. What is the type of error message?
# Error message is undefined local variable or method "south park" for main: Object(NameError)
#
# 3. What additional information does the interpreter provide about this type of error?
# It tells me that it's a name error.
#
# 4. Where is the error in the code?
# The error is at the end of the south_park.
#
# 5. Why did the interpreter give you this error?
# The interpreter gave me the error because south_park doesn't have a definition as either a variable or method.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# The error occurs on line 65.
#
# 2. What is the type of error message?
# The error is that the method "cartman" is not defined.
#
# 3. What additional information does the interpreter provide about this type of error?
# It says that it is a NoMethodError
#
# 4. Where is the error in the code?
# The error is before this method.
#
# 5. Why did the interpreter give you this error?
# The method gave me this error because a method (cartman) was called but there is no such method defined.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# The error occurs on line 84
#
# 2. What is the type of error message?
# The error message type is wrong number of arguments.
#
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter tells me that there is 1 argument when there should be 0. 
#
# 4. Where is the error in the code?
# The error is after cartmans_phrase.
#
# 5. Why did the interpreter give you this error?
# The interpreter gave me the error because when I called the method, I gave it an argument when the method doesn't require one.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# The line number where the error is is line 107.
# 
# 2. What is the type of error message?
# The error message is that there is the wrong number of arguments.
#
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter tells me that there is no argument when there should be 1, and that the method is being called on line 111.
#
# 4. Where is the error in the code?
# The error is in the way the method was called on line 111.
#
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because I called a method without providing an argument when it needs one.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# The error is on line 132.
#
# 2. What is the type of error message?
# THe error message is that there are the wrong number of arguments.
#
# 3. What additional information does the interpreter provide about this type of error?
# The method is being called on line 136 and that there is 1 argument when there should be two.
#
# 4. Where is the error in the code?
# The error is in the way the method was called.
#
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because the method (cartmans_lie) should have 2 arguments but I only provided it with one.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# The error occurs on line 155.
#
# 2. What is the type of error message?
# The error message says that a string cannot be coerced into fixnum (typeerror)
#
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter told me that the error is occuring on line 155.
#
# 4. Where is the error in the code?
# The error is in the fact that I'm trying to multiply a string by 5.
#
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because I'm trying to force incompatible data together.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# The error occurs on line 174.
#
# 2. What is the type of error message?
# The error is a Zero Dvision Error.
#
# 3. What additional information does the interpreter provide about this type of error?
# It says that the error occured on line 174.
#
# 4. Where is the error in the code?
# The error is in the equation.
#
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because I attempted to divide a number by 0.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#The error occurs on line 194.
# 
# 2. What is the type of error message?
# It's a load error message.
#
# 3. What additional information does the interpreter provide about this type of error?
# It says that it cannot load the file that I am requesting.
#
# 4. Where is the error in the code?
# The error is in the fact that there is no such file.
#
# 5. Why did the interpreter give you this error?
# The interpreter gave me this error because I am trying to load a file that does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
#
#  Which error was most difficult to read?
#
#  The error that was the most difficult to read was the 2nd one, the one that ended literally at the end of the code document.
# 
#  How did you figure out what the issue with the error was?
#  
#  My main method for finding out the issue with the error was to look at the referenced line of code and then at the most recent code being run.
#
#  Were you able to determine why each error message happened based on the code?
#
#  Well, the codes certainly helped. Knowing exactly where the errors were was extremely useful.
#
#  When you encounter errors in your future code, what processes will help you debug?
#
#  It will be useful to find the line of code in question, and then review and ensure that all my arguments are correct and I'm using the correct forms of data for interaction.