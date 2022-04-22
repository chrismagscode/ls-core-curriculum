say_hello = true
count = 5

while say_hello
  puts 'Hello!'
  iterator += 1
  say_hello = false if count == 5
end