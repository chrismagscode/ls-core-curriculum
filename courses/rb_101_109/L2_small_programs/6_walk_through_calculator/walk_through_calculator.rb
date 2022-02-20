Kernel.puts("Welcome to Chris' Calculator App.")
Kernel.puts("Please enter a number:")
number_1 = Kernel.gets().chomp()
Kernel.puts("Please enter a second number:")
number_2 = Kernel.gets().chomp()
Kernel.puts("Please select an operation. 1) Addition 2) Subtraction 3) Multiplication 4) Division.")
operation = Kernel.gets().chomp()

# if operation == "1"
#   answer = number_1.to_i() + number_2.to_i()
# elsif operation == "2"
#   answer = number_1.to_i() - number_2.to_i()
# elsif operation == "3"
#   answer = number_1.to_i() * number_2.to_i()
# else
#   answer = number_1.to_f() / number_2.to_f()
# end

answer =  if operation == "1"
            number_1.to_i() + number_2.to_i() 
          elsif operation == "2"
            number_1.to_i() - number_2.to_i()
          elsif operation == "3"
            number_1.to_i() * number_2.to_i()
          else
            answer = number_1.to_f() / number_2.to_f()
          end

Kernel.puts("The answer is #{answer}.")
