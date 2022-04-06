def sum(number)
  # convert to string, put into an array of individual characters, 
  string_array = number.to_s.chars
  # transpose characters to integers, sum all together
  num_array = string_array.map(&:to_i).reduce(:+)
  
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45