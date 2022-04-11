# frozen_string_literal: true

def factors(number)
  divisor = number
  factors = []
  while divisor.positive?
    factors << divisor if (number % divisor).zero?
    divisor -= 1
  end
  factors
end

p factors(15)
