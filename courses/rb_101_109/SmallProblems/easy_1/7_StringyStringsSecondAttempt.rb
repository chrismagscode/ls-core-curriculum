def stringy(length)
  numbers = []

  length.times.each do |index|
    value = index.even? ? 1 : 0
    numbers << value
  end

  numbers.join
end
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'