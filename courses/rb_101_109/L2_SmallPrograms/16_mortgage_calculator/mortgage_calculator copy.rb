# frozen_string_literal: true

# PSEUDO CODE
# Given value 1= loan_amount (dollars), annual percent rate, and loan duration (years)
# Convert value 2= annual percent rate to monthly percent rate
# Convert value 3= loan duration in years to loan duration in months
# Calculate monthly payment using value 1, value 2, and value 3
# Return monthly payment

# FORMAL PSEUDO CODE
# Initialize variables loan_amount, annual_percent_rate, loan_duration_years
# GET loan_amount, annual_percent_rate, loan_duration_years
# SET loan_amount
# SET monthly_percent_rate
# SET loan_duration_months
# SET monthly_payment
# RETURN monthly_payment

# MACHINE CODE
def prompt(string)
  Kernel.puts("=> #{string}")
end

def usr_input
  temp = nil
  loop do
    temp = Kernel.gets.chomp.to_f
    break if temp > 0.0

    prompt('Please enter an amount > 0.')
  end
  temp
end


def 

def monthly_payment(ln_amount, an_interest_rate, ln_duration_years)
  mn_interest_rate = an_interest_rate / 100 / 12
  ln_duration_months = ln_duration_years * 12
  ln_amount * (mn_interest_rate / (1 - (1 + mn_interest_rate)**-ln_duration_months))
  # ln_amount * (mn_interest_rate / (1 - (1 + mn_interest_rate)**(-ln_duration_months)))
  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment(ln_amount, an_interest_rate, ln_duration_years))}")
end

def mortgage_calculator
  prompt("Welcome to Mortgage Calculator!")
  prompt("We will calulate your monthly payment for your mortgage.")
  Kernel.puts("-------------")
  
  loop do
    prompt("Please enter the loan amount in dollars ($).")
    ln_amount = usr_input.to_i

    prompt("Please enter the loan duration in years.")
    ln_duration_years = usr_input

    prompt("Please enter the annual interest rate (APR).")
    prompt("For example: 6 is 6%; 10 is 10%).")
    an_interest_rate = usr_input
    
    monthly_payment(ln_amount, an_interest_rate, ln_duration_years)
    prompt("Would you like to make another calculation? Type 'Y' or 'N'")
    answer = Kernel.gets.chomp.downcase
    break if answer == 'n'
  end
prompt("Thank you for using Mortgage Calculator. Have a great day!")
end

mortgage_calculator