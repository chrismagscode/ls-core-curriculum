# Question 2
# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# 1. what is != and where should you use it?
# 2. put ! before something, like !user_name
# 3. put ! after something, like words.uniq!
# 4. put ? before something
# 5. put ? after something
# 6. put !! before something, like !!user_name

# Solution
# If you see ! or ? at the end of the method, it's part of the method name, not Ruby syntax.
# 
# 1. It means "not equal". 
# 2. If you put it before an object, it will turn it into the opposite of their boolean equivalent. 
# 3. This makes uniq a mutating method. 
# 4. If you put ? before a method name, it does nothing. If you put 
#    ? before a colon, its the ternary operator for if...else
# 5. If you put ? after a method name, it does nothing. It has no impact on the function of the method.
# 6. If you put !! before an object, it will turn any object into their boolean equivalent. 
