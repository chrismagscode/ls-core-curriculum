# What would you expect the code below to print out?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# Solution
# Integer#uniq method is not a mutating method. Numbers are immutable. 
# So, the output is of the numbers array. 
# Output:
# 1
# 2
# 2
# 3
