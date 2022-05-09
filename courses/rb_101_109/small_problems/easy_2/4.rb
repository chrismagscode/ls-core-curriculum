puts 'What is your age? '
age = gets.chomp.to_i

puts 'At what age would you like to retire? '
retire_age = gets.chomp.to_i

working_years = retire_age - age

current_year = Time.now.year
retire_year = current_year + working_years

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{working_years} years of work to go!"