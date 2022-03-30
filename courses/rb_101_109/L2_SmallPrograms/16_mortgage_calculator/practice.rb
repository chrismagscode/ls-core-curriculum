# PSEUDO CODE
# Given loan_amount, interest_rate_y, loan_duration_y

# Prompt user to input loan amount in dollars.
# save value to loan_amount

# Calculate interest rate in months
#   Prompt user to input interest_rate_y in years
#   Calculate interest rate in months
#     - convert interest_rate_y to float, 
#     - divide by 12, 
#     - save to interest_rate_m

# Calculate loan duration in months
# Prompt user to input loan duration in years, save to loan_duration_y
# Multiply loan_duration_y by 12, save value to loan_duration_m



# Calculate 
# monthly_payment = loan_amount * (interest_rate_m / (1 - (1 + interest_rate_m)**(-loan_duration_m)))

# FORMAL PSEUDO CODE
# START

# GET loan amount in dollars
# SET loan_amount

# GET interest rate years
# SET interest_rate_y
# SET interest_rate_m = interest_rate_y / 12

# GET loan duration in years
# SET loan_duration_y
# SET loan_duration_m = loan_duration_y * 12

# SET monthly_payment = loan_amount * (interest_rate_m / (1 - (1 + interest_rate_m)**(-loan_duration_m)))

# PRINT monthly_payment

# END

def prompt(message)
  Kernel.puts("=> #{message}")
end
loan_amount = nil
interest_rate_y = nil
loan_duration_y = nil
prompt("Welcome to Mortgage Calculator.")

loop do 
  prompt("Please enter the loan amount in dollars.")  
  
  loop do
    loan_amount = Kernel.gets.chomp.to_f 
    break if loan_amount > 0
    # loan amount = 0 or negative number
    prompt("Please enter an amount greater than 0.")
  end

  prompt("Please enter the annual interest rate (APR) in percentage (%) format i.e. 5%.")
  
  loop do
    interest_rate_y = gets.chomp.to_f
    break if interest_rate_y > 0
    prompt("Please enter a percentage rate greater than 0%")
  end

  interest_rate_m = interest_rate_y / 12

  prompt("Please enter the loan duration in years.")
  loop do
    loan_duration_y = gets.chomp.to_i
    break if loan_duration_y > 0
    prompt("Please enter a value greater than 0.")
  end

  loan_duration_m = loan_duration_y * 12

  monthly_payment = loan_amount * (interest_rate_m / (1 - (1 + interest_rate_m)**(-loan_duration_m)))
  prompt("Your monthly payment is $#{monthly_payment.to_i}")
  prompt("Would you like to start another calculation? Y to continue, or any key to exit.")
  response = gets.chomp.downcase
  break if response != 'y'
end
prompt("Thank you for choosing Mortgage Calculator.")