def stringy(number)
  result = ''
  loop do
    result += '1'
    break if result.length == number
    result += '0'
    break if result.length == number
  end
  result
end
