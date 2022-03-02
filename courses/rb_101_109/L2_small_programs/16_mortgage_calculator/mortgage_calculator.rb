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
# methods
def prompt(string)
  Kernel.puts("=> #{string}")
end

def usr_input
  Kernel.gets.chomp.to_f
end

# Given loan_amount, annual_percent_rate, loan_duration_years
prompt("Please enter the loan amount in dollars ($).")
ln_amount = usr_input
prompt("Please enter the loan duration in years.")
ln_duration_years = usr_input
prompt("Please enter the annual percent rate (APR) (for example: 6 for 6%; 10 for 10%).")
an_interest_rate = usr_input
# SET monthly_percent_rate
p mn_interest_rate = an_interest_rate / 100 / 12
# SET loan_duration_months
p ln_duration_months = ln_duration_years * 12
# SET monthly_payment
mn_payment = ln_amount * (mn_interest_rate / (1 - (1 + mn_interest_rate)**(-ln_duration_months)))
# RETURN monthly_payment
prompt("This is monthly payment $#{mn_payment.round(2)}.")