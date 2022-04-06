def sum(number)
  # convert to string
  string_array = number.to_s.chars
  # map to transpose to integers
  numbers_array = string_array.map { |string| string.to_i }
  # # sum 
  numbers_array.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
