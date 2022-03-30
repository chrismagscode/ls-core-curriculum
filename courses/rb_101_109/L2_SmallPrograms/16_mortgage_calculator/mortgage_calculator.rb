# frozen_string_literal: true

# mortgage calculator

# PSEUDO CODE

# Prompt user to input loan amount. Make sure it's in dollars
# Get annual percentage rate (APR). Make sure it is in percentage format i.e. 5 = 5%
# Get loan duration in years

# Calculate Monthly Interest Rate
# change annual interest rate to decimal form
# change annual interest rate to monthly interest rate

# Calculate Loan Duration in Months
# get loan duration in years, multiply by 12 to get loan duration in months

# Calculate Monthly Payment
# monthly_payment = loan_amount * (interest_rate_m / (1 - (1 + interest_rate_m)**(-loan_duration_m)))

# Output Monthly Payment

# FORMAL PSEUDO CODE

# START

# Prompt user to input loan amount. Make sure it's in dollars
# GET loan_amount_y

# Get annual percentage rate (APR). Make sure it is in percentage format i.e. 5 = 5%
# GET percentage_rate_a
# SET percentage_rate_a

# Get loan duration in years
# GET loan_duration_y
# SET loan_duration_y

# Calculate Monthly Interest Rate
# Change Annual Interest Rate To Decimal Form
# SET decimal_interest_rate_a = percentage_rate_a / 100

# Change Annual Interest Rate to Monthly Interest Rate
# SET monthly_interest_rate = decimal_interest_rate_a * 12

# Calculate Loan Duration in Months
# loan_duration_m = loan_duration_y * 12

# Calculate Monthly Payment
# SET monthly_payment = loan_amount * (interest_rate_m / (1 - (1 + interest_rate_m)**(-loan_duration_m)))

# PRINT Monthly Payment

# END

# RUBY CODE

def prompt(message)
  Kernel.puts("=> #{message}")
end

# obtain number
# check if number is > 0, if so, return true
# if not, prompt user to enter another number

def obtain_number
  number = nil
  loop do
    number = Kernel.gets.chomp.to_f
    break if number.positive?

    prompt('Please enter a value greater than zero.')
  end
  number
end

loop do
  prompt('Please enter a loan amount in dollars.')
  loan_amount = obtain_number

  prompt('Please enter an annual percentage rate(APR) in percentage form.')
  prompt('(Example: 5 for 5% or 2.5 for 2.5%)')

  percentage_rate_y = obtain_number

  prompt('Please enter a loan duration in years.')
  loan_duration_y = obtain_number

  decimal_rate_m = percentage_rate_y / 12 / 100
  loan_duration_m = loan_duration_y * 12
  monthly_payment = loan_amount * (decimal_rate_m / (1 - (1 + decimal_rate_m)**-loan_duration_m))

  prompt("Your monthly payment is: $#{format('%.2<foo>f', foo: monthly_payment)} ")
  prompt('Would you like to calculate another monthly payment?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for choosing Mortgage Calculator!')
prompt('Good bye!')
