# Palindromic Strings (Part 1)
# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. 
# A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

# Palindromic Strings (Part 2)
# Write a method that determines whether an array is palindromic; that is, the element values appear in the same 
# sequence both forwards and backwards in the array. 

# Palindromic Strings (Part 3)
# Now write a method that determines whether an array or a string 
# is palindromic; that is, write a method that can take either an array or a string argument, and determines whether 
# that argument is a palindrome. You may not use an if, unless, or case statement or modifier.

# Understand the Problem
  # input: string
  # output: boolean

# Explicit / Implicit Requirements
  # - E: string characters must be 
  # - E: case matters; C != c
  # - E: punctuation matters
  # - E: spaces matter

# Clarifying Questions
  # - can it be a different input type than string? No.

# Mental Model

# Examples/ Test Cases
  # input: 'madam'
  # output: true

  # input: 'Madam'
  # output: false

  # input: 'madam i'm adam'
  # output: false 

  # input: '356653'
  # output: true

# Data Structure
  # - string

# Algorithm
  # 1. Invoke 'reverse' method on string, compare to string
 
  def palindrome?(string)
    string == string.reverse
  end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

