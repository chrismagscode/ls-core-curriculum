# Odd Lists
# Write a method that returns an Array that contains every other element of an Array that is
# passed in as an argument. The values in the returned list should be those values that are in the 
# 1st, 3rd, 5th, and so on elements of the argument Array.

# Understand the Problem
  # input: array of numbers
  # output: array of numbers

# Implicit Requirements
  # 
# Clarifying Questions

# Mental Model

# 1   loop through list till end
# 2   Using array index, reference corresponding value, push to variable 'result'
# 3   Increment index by 2.
# 4   When loop is complete, return result

# Examples/ Test Cases
  # Test Case #1
    # input: [1, 2, 3, 4, 5]
    # output: [1, 3, 5]
  
  # Test Case #2
    # input: [2, 4, 6, 8, 10]
    # output: [2, 6, 10]

# Data Structure
  # array

# Algorithm
  # 1. create an empty array called 'odd_elements' that will contain the odd indexed elements of input array
  # 2. Assign integer 0 to variable 'index', which represents the index of array
  # 3. loop over input array
    # 4. while index < array.size
    # 5. obtain value at array[index]; push into 'odd_elements'
    # 6. increment index by +2
  # 7. return 'odd_elements'


def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []