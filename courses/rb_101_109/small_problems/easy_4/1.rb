# Short Long Short
# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of 
# concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

# Understand the Problem
  # input: 2 strings as arguments at different lengths
  # output: 1 single string; result of concatenation of: shorter string + longer string + shorter string again

# Explicit Requirements
  # - assume strings are of different lengths, no need to add code to check
  # - inputs must be in string format
  # - output must be in string format

  # Implicit Requirements
  # - input string can be an empty string
  # - both input strings must be of different lengths
  # - 

# Clarifying Questions
  # - What are the possible string values for the input? Are other data types allowed?
  # - How will string inputs be provided? As a string object
  # - What happens if only one string is provided? 

# Mental Model
  # 1. Initialize array with both input strings
  # 2. sort array by length
  # 3. concatenate: first_element + last_element + first_element

# Examples/ Test Cases
  # input: 'abc', 'defgh'
  # output: "abcdefghabc"

  # input: 'abcde', 'fgh'
  # output: "fghabcdefgh"

  # input: '', 'xyz'
  # output: "xyz"

# Data Structure
  # - string

# Algorithm
  # 1. initialize array with both input strings
  # 2. sort array by length
  # 3. concatenate array elements: first + last + first
 
def short_long_short(string1, string2)
  result = [string1, string2].sort_by {|x| x.size}
  result.first + result.last + result.first
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"