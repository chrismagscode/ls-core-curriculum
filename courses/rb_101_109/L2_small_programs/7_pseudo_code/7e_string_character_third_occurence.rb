# A method that determines the index of the 3rd occurrence of a given character in a string. 
# For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should 
# return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, 
# return nil.

# PSEUDO CODE
# Given a string
# Get a character from user and save as the saved character.
# Create a counter variable that tracks the count of characters 
# in string. Start with zero.
# Create iterator variable that represents index of the string; 
# start at the beginning of the string.
# Iterate through the entire string, each character one by one.
#     For each iteration, compare the saved character with current 
#     character.
#     If current character equals saved character, increment counter 
#     variable by 1.
#         If counter equals 3, return iterator
#     Increment iterator by 1
# If counter < 3, return nil     

# FORMAL PSEUDO CODE
# Given a string and character
# SET saved_character = character obtained from user
# SET counter = 0
# SET iterator = 0
# WHILE iterator < string.length - 1
#   IF string[iterator] == saved_character
#       counter += 1
#       IF counter == 3
#           return iterator
#       iterator += 1
# IF counter < 3
#     return nil
# END

# PROGRAM CODE
def character_count(string, character)
  saved_character = character
  counter = 0
  iterator = 0
  while iterator < string.length
    if string[iterator] == character
      counter += 1
      if counter == 3
        return iterator
      end
    end
    iterator += 1
  end
  if counter < 3
    return nil
  end
end

Kernel.p(character_count("aabcc", "a"))