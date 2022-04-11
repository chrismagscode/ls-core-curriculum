# frozen_string_literal: true

# We get an error because we are attempting to add a string object with an integer object.

# Solution 1: Use string concatenation; convert integer object to string object invoking `put_s` on the integer object.
puts 'the value of 40 + 2 is ' + (40 + 2).to_s
# Solution 2: We can use string interpolation
puts "the value of 40 + 2 is #{40 + 2}"
