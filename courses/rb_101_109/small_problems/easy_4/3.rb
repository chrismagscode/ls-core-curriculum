# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, 
# unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year 
# unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that takes any year greater than 0 as 
# input, and returns true if the year is a leap year, or false if it is not a leap year.

# Understand the Problem
  # input: year as integer
  # output: boolean, true if leap year, false if not

# Explicit Requirements
  # - input must be integer, output must be boolean
  # - year must be greater than 0
  # - 


# Mental Model
  # 1. Check if year is divisible by 4; return false otherwise
  # 2. if yes, check if divisible by 100; return false otherwise
  # 3. if yes, check if divisible by 400; return false otherwise
  
# Examples/ Test Cases
  # leap_year?(2016) == true
  # leap_year?(2015) == false
  # leap_year?(2100) == false
  # leap_year?(2400) == true
  # leap_year?(240000) == true
  # leap_year?(240001) == false
  # leap_year?(2000) == true
  # leap_year?(1900) == false
  # leap_year?(1752) == true
  # leap_year?(1700) == false
  # leap_year?(1) == false
  # leap_year?(100) == false
  # leap_year?(400) == true

# Data Structure
  # - n/a

# Algorithm
  # 1. if year % 4 == 0, else return false
  # 2.  if year % 100 == 0, else return false
  # 3.    if year % 400 == 0, else return false
  # 4. return true
  # 5.
 

# Solution
# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end

def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 4 == 0 && year % 100 == 0 && year % 400 == 0)
end

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true