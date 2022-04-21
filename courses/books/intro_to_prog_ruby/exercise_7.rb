# What's the major difference between an Array and a Hash?

# Solution
# The major difference between an array and hash is that a hash contins a key value pair for referencing by key. 

# HASH
# A hash contains key-value pairs; each value is associated with a key.

# To access a value, you need to pass in a key
hash = {dog: 'fido', 'fluffy'}
puts hash[:dog]

# ARRAY
# Arrays are a sequence of elements; each element can be accessed by its index, beginning from zero.

# To access an element from the array, you use the index
array = ['fido', 'fluffy']
puts array[0]
