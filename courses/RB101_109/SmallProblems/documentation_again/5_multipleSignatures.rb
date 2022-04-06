a = %w(a b c d e)
puts a.fetch(7) # nil
puts a.fetch(8, 'beats me') # 'beats me'
puts a.fetch(8) { |index| index**2 } #49