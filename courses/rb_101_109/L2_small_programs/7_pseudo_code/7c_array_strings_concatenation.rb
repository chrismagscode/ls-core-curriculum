# PSEUDO CODE
  # Given an array of strings
  # Iterate through the collection one by one
  # Save the first value of collection as the saved value
    # For each iteration, add the saved value to the current value
  # After iterating through the collection, return the saved value 

# FORMAL PSEUDO CODE
  # GET Array of strings
  # SET saved_value = first value in the collection
  # SET iterator = 1
  # WHILE iterator <= collection length
    # saved_value +=  collection[iterator]
    # iterator += 1
  # return saved_value

# PROGRAM CODE

def add_strings(array)
  saved_value = array[0]
  iterator = 1
  while iterator <= array.length
    saved_value += collection[iterator]
    iterator += 1
  end
  saved_value
end
array = ['c', 'd', 'cat', 'dan']
p add_strings(array)
