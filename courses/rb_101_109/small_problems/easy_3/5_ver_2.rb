# Squaring an Argument

def multiply(n1, n2)
  n1 * n2
end

# Answer

# def square(n)
#   multiply(n, n)
# end

# Extra Answer: "Power to n"

def power_to_n(n, p)
  result = 1
  
  if p.odd?
    call_count = (p - 1) / 2 
    call_count.times {result *= multiply(n, n)}
    result *= n
  else
    call_count = p / 2 
    call_count.times { result *= multiply(n, n)}
    result
  end
end

p power_to_n(2,6)

