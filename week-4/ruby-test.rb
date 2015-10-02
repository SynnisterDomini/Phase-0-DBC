puts "Please give me a year."

def calculate_days(time)
  if time % 4 == 0
    return 366
  else
    return 365
  end
end




days = calculate_days time
print days
