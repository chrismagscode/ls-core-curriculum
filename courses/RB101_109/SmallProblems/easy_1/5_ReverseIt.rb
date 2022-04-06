# Write a method that takes one argument, a string and returns a new string with the words in reverse order
def reverse_sentence(string)
  reversed_string = ''
  p split_array = string.split(' ') # Take string and split into separate values
  # Iterate from end, and concatenate each value
  p reverse_array = split_array.reverse()
  reverse_array.join(' ')
# return concatenated string
end
p reverse_sentence('Hello World Quin Quincinera')
