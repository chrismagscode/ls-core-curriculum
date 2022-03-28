# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# Brute Force
def digit_list_brute(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

puts digit_list_brute(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list_brute(7) == [7]                     # => true
puts digit_list_brute(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list_brute(444) == [4, 4, 4]             # => true

# Using #map function
def digit_list_map(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list_map(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list_map(7) == [7]                     # => true
puts digit_list_map(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list_map(444) == [4, 4, 4]             # => true