# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
  Kernel.puts("=> #{message}")
end


prompt("=> Welcome to Calculator!")

loop do
  prompt("What's the first number?")
  number1 = Kernel.gets().chomp()

  if valid_number?(number1)
    break
  else
    prompt("Hmm... that doesn't look like a valid number")
  end
end

prompt("What's the second number?")
number2 = Kernel.gets().chomp()

prompt("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

result = case operator
         when '1'
          result = number1.to_i() + number2.to_i()
         when '2'
          result = number1.to_i() - number2.to_i()
         when '3'
          result = number1.to_i() * number2.to_i()
         when '4'
          result = number1.to_f() / number2.to_f()
end

prompt("The result is #{result}")

