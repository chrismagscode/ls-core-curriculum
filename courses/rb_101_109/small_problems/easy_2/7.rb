# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# My Solution
# num = 1
# while num < 100
#   if num.even?
#     puts num
#     num += 1
#   else
#     num += 1
#   end
# end

# LS Solution
value = 1
while value <= 99
  puts value if value.even?
  value += 1
end