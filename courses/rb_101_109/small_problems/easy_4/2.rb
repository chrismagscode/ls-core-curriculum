# What Century is That?
# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century 
# number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Understand the Problem
  # input: integer
  # output: string with corresponding suffix

# Explicit Requirements
  # - input must be an integer

  
# Clarifying Questions
  # - 11th 12th 13th 14th 15th 16th 17th 18th 
  # - what is a century? How do you calculate it?
    #  - year / 100 + 1 

# Examples/ Test Cases
  # century(2000) == '20th'
  # century(2001) == '21st'
  # century(1965) == '20th'
  # century(256) == '3rd'
  # century(5) == '1st'
  # century(10103) == '102nd'
  # century(1052) == '11th'
  # century(1127) == '12th'
  # century(11201) == '113th'

# Mental Model
  # calculate century; century is year / 100 + 1
  # if year % 100 == 0, then subtract 1
  # convert century itegery to string
  # concatenate century with suffix
  # calculating suffix
    # if last digit is 1, return 'st'
    # if last digit is 2, return 'nd'
    # if last digit is 3, return 'rd'
    # if last digit is 5 - X, return 'th'
    # if century % 100 == 11, 12, 13, return 'th'


# Algorithm
  # 1. calculate century = year / 100 + 1
  # 2. if year % 100 == 0, subtract 1 from century; 
  # 3. convert century to string
  # 4. Concatenate century with sufix
  # Calculating suffix
    # 1. find last digit of century 
    # if last digit is 1, return 'st'
    # if last digit is 2, return 'nd'
    # if last digit is 3, return 'rd'
    # if last digit is 5 - X, return 'th'
    # if century % 100 == 11, 12, 13, return 'th'

# Solution
def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  p century
  century.to_s + suffix(century)
  
end

def suffix(century)
  last_digit = century % 10
  return 'th' if [11, 12, 13].include?(century % 100)
  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201)  == '113th'
