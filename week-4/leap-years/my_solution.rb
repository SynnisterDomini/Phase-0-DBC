# Leap Years

# I worked on this challenge [by myself, with: ].

def leap_year? (year)
	if year % 4 == 0 and year % 100 != 0
		return true
	else
		if year % 400 != 0
			return false
		else
			return true
		end
	end
end
	# Your Solution Below