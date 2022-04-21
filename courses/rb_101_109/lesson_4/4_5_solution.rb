def sum_even_number_row(row_number)

end

def create_row(start_integer, row_length)
  row = []
  loop do
    row << start_integer
    start_integer += 2
    break if row.length == row_length
  end
  # steps 2-4 
  row
end

# row number: 1 --> sum of integers in row: 2
# row number: 2 --> sum of integers in row: 10
# row number: 4 --> sum of integers in row: 68

# p sum_even_number_row(1) == 2 # true
# p sum_even_number_row(2) == 10
# p sum_even_number_row(4) == 68

# Examples:
# start: 2, length: 1 --> [2]
# start: 4, length: 2 --> [4, 6]
# start: 8, length: 3 --> [8, 10, 12]

p create_row(2, 1) #== [2]
#p create_row(4, 2) #== [4, 6]
#p create_row(8, 3) #== [8, 10, 12]

# Start the loop
#   - Add the start integer to the row
#   - Increment the start integer by 2
#   - Break out of the loop if length of row equals row length
