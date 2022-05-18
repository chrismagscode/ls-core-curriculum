# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

array = (1..99).to_a.select {|num| num.odd?}
while array.length > 0
  puts array.shift
end