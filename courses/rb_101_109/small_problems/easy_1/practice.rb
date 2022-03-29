def digit_list(number)
  number.to_s.chars.map{|char| char.to_i}
end
p digit_list(12345)x