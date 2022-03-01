# Given loan amount, annual percentage rate in percent format, and loan duration in years

# Calculate 
  # the monthly interest rate 
  # loan duration in months (annual percentage rate * 12)
  # monthly payment (annual payment / 12)

# PSEUDO CODE  
# Given loan amount, annual percentage rate in percent format, and loan duration in years
# Iterate while status is true
  # Ask user to input loan amount and save value
  # Ask user to input APR in percent format and save value
    # Divide saved value by 100 to convert to decimal format
    # Divide by 12 to convert from years to months format. Save value.
  # Ask user to input loan duration in years and save value
    # Divide by 12 to convert from years to months format. Save value
  # input monthly payment equation
  # input loan amount, monthly percent rate, and loan duration to the equation
  # output value to the user
  # ask user if they would like to make another calculation
  # If no, change status to false
  # if status is false, exit from loop
  # if status is true, continue to iterate
# output "Thank you!" and exit program


# FORMAL PSEUDO CODE
# START
#
# SET keep_going = true
# SET monthly_payment = nil
# SET loan_amount = nil
# SET monthly_percent_rate = nil
  # SET annual_percent_rate = nil
# SET loan_duration_months = nil
  # SET loan_duration_years = nil
#
# WHILE keep_going = true
  # GET loan_amount
  # SET loan_amount
  #
  # GET annual_percent_rate
  # SET annual_percent_rate
  #
  # GET loan_duration_years 
  # SET loan_duration_years
  #
  # SET monthly_percent_rate = annual_percent_rate / 100 / 12
  #
  # SET loan_duration_months = loan_duration_years / 12
  #
  # SET monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**((-loan_duration_months))))
  # PRINT monthly_payment
  # GET keep_going
  # IF keep_going == true, continue to iterate
  # ELSE exit from loop
  # PRINT Thank user and end program



# MACHINE CODE
def prompt(message)
  Kernel.puts("=> #{message}")
end

keep_going = true

def loan_calculator

  prompt('Hello! Welcome to the Mortgage Calculator! Please enter your name.')
  name = ''
  keep_going = true
  loan_amount = nil
  annual_percent_rate = nil
  loan_duration = nil

  #verify name
  loop do
    name = Kernel.gets().chomp()
    if name.empty?()
      prompt("Make sure to enter a valid name.")
    else
      prompt("Hello #{name}! Let's get started.")
      break
    end
  end

  while keep_going == true

    # verify loan amount
    prompt("First, please input your desired loan amount in dollars.")
    loop do
      loan_amount = Kernel.gets().chomp().to_f
      if loan_amount < 0
        prompt("Please enter a valid number.")
      else
        break
      end
    end

    # verify APR in correct format
    prompt ("Next, please input your desired APR in percent format.")
    loop do
      annual_percent_rate = Kernel.gets().chomp().to_f
      if annual_percent_rate < 0
        prompt("Please enter a valid percentage rate.")
      else
        break
      end
    end

    # verify loan_duration is in correct format
    prompt('Lastly, please input your desired loan duration in years')
    loop do
      loan_duration = Kernel.gets().chomp().to_f
      if loan_duration < 0
        prompt('Please enter a valid duration time in years.')
      else
        break
      end
    end

    monthly_percent_rate = annual_percent_rate.to_f / 1200
    loan_duration_month = loan_duration.to_f * 12
    monthly_payment = loan_amount * (monthly_percent_rate / (1 - (1 + monthly_percent_rate)**(-loan_duration_month)))
    prompt("Your monthly payment will be $#{monthly_payment.round(2)}.")
    
    # verify response is correct
    prompt('Would you like us to calculate another monthly payment? Please enter Y or N')
    answer = Kernel.gets().chomp().downcase()
    loop do
      if answer == 'y'
        break
      elsif answer == 'n'
        break
      else
        prompt('Please enter a valid response.')
      end
    end

    if answer =='n'
      keep_going = false
    end

  end
  prompt("Thank you for using Mortgage Calculator.")
end
    



loan_calculator()

