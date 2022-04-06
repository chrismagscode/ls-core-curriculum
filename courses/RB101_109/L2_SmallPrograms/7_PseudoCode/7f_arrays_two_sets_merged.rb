# Write a method that takes two arrays of numbers and returns the result of merging the arrays. 
# The elements of the first array should become the elements at the even indexes of the returned array, 
# while the elements of the second array should become the elements at the odd indexes.

# PSEUDO CODE
# Given two arrays of integers array_1 and array_2
# Create an empty array used to return the combined array and call it merge_array 
# Iterate through both arrays, one index at a time
# For each iteration, remove the current element and add it to the merge_array
# Return the merge_array


# FORMAL PSEUDO CODE
# Given two arrays of integers array_1 and array_2
# SET merge_array = []
# SET iterator = 0
# WHILE iterator < array_1.length
  # for array_1, retrieve value at index iterator and push to merge_array
  # for array_2, retrieve value at index iterator and push to merge_array
# PRINT merge_array

# PROGRAM CODE
def merge_array(array_1, array_2)
  merge_array = []
  iterator = 0
  while iterator < array_1.length
    merge_array.push(array_1[iterator])
    merge_array.push(array_2[iterator])
    iterator += 1
  end
  p merge_array
end

array_1 = [1, 2, 3]
array_2 = [4, 5, 6]
merge_array(array_1, array_2)

