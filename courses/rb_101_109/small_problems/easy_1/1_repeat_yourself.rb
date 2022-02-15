# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

def repeat(string, iterations)
  counter = 0
  while counter < iterations 
    Kernel.puts(string)
    counter += 1
  end
end

repeat("hello", 3)