count = 1

loop do
  puts "#{count} is odd!" if count % 3 == 0 || count.odd?
  puts "#{count} is even!" if count % 2 == 0 || count.even?
  break if count == 5
  count += 1
end
