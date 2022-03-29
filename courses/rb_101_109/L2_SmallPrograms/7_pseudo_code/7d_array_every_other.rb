# a method that takes an array of integers, and returns a new array with every other element 
# from the original array, starting with the first element.

# PSEUDO CODE
  # Given an array of integers.
  # Create an empty array called new_array
  # Iterate over the entire array one by one
  # For each iteration
  #     If the index of the array is even, put the value in the new_array
  #     If the index of the array is odd, move to the next iteration
  # Return new_array

# FORMAL PSEUDO CODE
  # START
  # Given an array of integers
  # SET new_array = an empty array
  # SET iterator = 0
  # WHILE iterator < length of array
  #     if iterator is even, put value of array at index iterator in new_array
  #     if iterator is odd, move to the next iteration
  # RETURN new_array   
  # END  

# PROGRAM CODE
def new_array(array_integers)
  new_array = []
  iterator = 0
  while iterator < array_integers.length
    if iterator.even?
      new_array.push(array_integers[iterator])
      iterator += 1
    else
      iterator += 1
    end
  end
  p new_array
end

array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 20]
new_array(array)