# PSEUDO CODE
  # Given a collection of integers
  # Save the initial value in the collection into a variable "saved value"
  # Iterate through the entire collection one by one
  # 	Save the current value to variable "current value"
  # 	For each iteration, compare "saved value" to the "current value"
  # 	if "saved value" is greater than "current value"
  # 		Move to the next value in the iteration
  # 	if "current value" is greater than "saved value"
  # 		Set "saved value" equal to "current value"
  # Output "saved value"

# FORMAL PSEUDO CODE
  # START
  # Given a collection of integers
  # SET saved_value = first value of the collection
  # SET iterator = 1

  # WHILE iterator < collection.length
  # 	SET current_value = collection[iterator]
  # 	IF saved_value < current_value
  # 		saved_value = current_value
  # 		iterator += 1
  # 	ELSE
  # 		iterator += 1
  # PRINT saved_value
  # END

# PROGRAM CODE
def highest_value(collection)
	saved_value = collection[0]
	iterator = 1
	
	while iterator < collection.length
		current_value = collection[iterator]
		if current_value > saved_value
			saved_value = current_value
			iterator += 1
		else
			iterator += 1
		end
	end
	Kernel.puts(saved_value)
end

highest_value([1,2,3,4,5])