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
#methods
def prompt(string)
  Kernel.puts("=> #{string}")
end

def get_input
  Kernel.gets().chomp().to_f
end

# Given loan_amount, annual_percent_rate, loan_duration_years
loan_amount = get_input
# SET loan_amount
# SET monthly_percent_rate
# SET loan_duration_months
# SET monthly_payment
# RETURN monthly_payment