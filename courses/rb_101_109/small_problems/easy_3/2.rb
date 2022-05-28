# def prompt(str)
#   puts "==> #{str}"
# end
# prompt "Enter the first number:"
# first_number = gets.chomp.to_i
# prompt "Enter the second number:"
# second_number = gets.chomp.to_i
# prompt "#{first_number} + #{second_number} = #{first_number + second_number}"
# prompt "#{first_number} - #{second_number} = #{first_number - second_number}"
# prompt "#{first_number} * #{second_number} = #{first_number * second_number}"
# prompt "#{first_number} / #{second_number} = #{first_number / second_number}"
# prompt "#{first_number} % #{second_number} = #{first_number % second_number}"
# prompt "#{first_number} ** #{second_number} = #{first_number ** second_number}"

# floats

def prompt(str)
  puts "==> #{str}"
end
prompt "Enter the first number:"
first_number = gets.chomp.to_f
prompt "Enter the second number:"
second_number = gets.chomp.to_f
prompt "#{first_number} + #{second_number} = #{first_number + second_number}"
prompt "#{first_number} - #{second_number} = #{first_number - second_number}"
prompt "#{first_number} * #{second_number} = #{first_number * second_number}"
prompt "#{first_number} / #{second_number} = #{first_number / second_number}"
prompt "#{first_number} % #{second_number} = #{first_number % second_number}"
prompt "#{first_number} ** #{second_number} = #{first_number ** second_number}"