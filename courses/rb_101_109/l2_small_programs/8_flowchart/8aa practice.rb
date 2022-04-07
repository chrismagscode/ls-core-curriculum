# while user still wants to continue the collection
#   ask user to input a collection of nubmers
#   save the first value as the saved value
#   iterate trhough the collection, compare the saved value with current value
#     if the saved value is greater than or equal to the current value
#       move to the next value in the collection
#       otherwise, if the current value is greater
#         reassign the saved value as the current value
#
#     after iterating through the collection, save the largest value into the list
#     ask the user if they want to input another collection
# 
# return saved list of numbers

# START
# 
# SET largest_numbers = []
# SET still_going = true
# 
# WHILE still_going == true
#   GET "Enter a collection"
#   SET collection
#   SET largest_value = SUBPROCESS "Largest value in the collection"
#   largest_numbers.push(largest_value)
#   GET "Enter another collection?"
#   IF yes, 
#     keep_going = true
#   ELSE
#     keep_going = false
#   If keep_going == false
#     exit the loop
# Return largest_numbers 
# END
