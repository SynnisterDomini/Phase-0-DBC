copperhead = ["Joshua Adams",
"Syema Ailia",
"Kris Bles",
"Alexander Blair",
"Andrew Blum",
"Jacob Boer",
"Steven Broderick",
"Ovi Calvo",
"Danielle Cameron",
"Eran Chazan",
"Jonathan Chen",
"Un Choi",
"Kevin Corso",
"Eric DellAringa",
"Eunice Do",
"Ronny Ewanek",
"John Paul Chaufan Field",
"Eric Freeburg",
"Jeffery George",
"Jamar Gibbs",
"Paul Gaston Gouron",
"Gabrielle Gustilo",
"Marie-France Han",
"Noah Heinrich",
"Jach Huang",
"Max Inguez",
"Mark Janzer",
"Michael Jasinski",
"Lars Johnson",
"Josuha Kim",
"James Kirkpatrick",
"Christopher Lee",
"Isaac Lee",
"Charlotte Manetta",
"Joseph Marion",
"Kevin Mark",
"Bernadette Masciocchi",
"Bryan Munroe",
"Becca Nelson",
"Van Phan",
"John Polhill",
"Jeremy Powell",
"Jessie Richardson",
"David Roberts",
"Armani Saldana",
"Chris Savage",
"Parminder Singh",
"Kyle Smith",
"Aaron Tsai",
"Douglas Tsui",
"Deanna Warren",
"Peter Wiebe",
"Daniel Woznicki",
"Jay Yee",
"Nicole Yee",
"Bruno Zatta"]

# #psudeocode
# #steps:
# Input: list of students
# Output: list of students in groups of 3-5
# 1. Randomize list of students
# 2. Put them in groups of 4 because we have 56.
# 3. Return to this after I've finished with other challenges so I can possibly make it better

#initial solution
def create_group (population)
	population.shuffle!
	groups = population.each_slice(4).to_a
	#print groups
	return groups
end

#create_group(copperhead)

# Reflection:
# What was the most interesting and most difficult part of this challenge?

# The hardest part of this challenge was inputing all the individuals of the group into an array.
# The most interesting part of this challenge was figuring out how to get the right amount of people per group.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# I do believe I'm improving when it comes to writing my psudeo code and translating that into regular code.

# Was your approach for automating this task a good solution? What could have made it even better?

# I think my solution was solid, but right now it won't work with groups that aren't prefectly divisible by 4. Fixing this problem would make it universal and more versatile.

# What data structure did you decide to store the accountability groups in and why?

# I used an array because it can be easily shuffled, and because there was no need for hashes.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# I learned about the shuffle method, but that was about it.