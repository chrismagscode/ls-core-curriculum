# Pseudo Code
# Display board
# Player Marks a square
# computer marks a square
# Check if winner: 
    # yes: prompt winner; 
    # No: Check if board is full; 
        # yes: Display tie
  # No: Continue with loop
# Ask user if they want to play again?
    # Yes: Reset Board, 
    # No: Prompt user "Thank you for playing."

PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
INITIAL_MARKER = ' '

def prompt(str)
  puts "=> #{str}"
end

def display_board(brd)
system  'clear'
puts ""
puts "     |     |"
puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
puts "     |     |"
puts "-----+-----+-----"
puts "     |     |"
puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
puts "     |     |"
puts "-----+-----+-----"
puts "     |     |"
puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
puts "     |     |"
puts ""
end

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARKER}
  new_board
end

def empty_squares(brd)
  brd.keys.select {|key| brd[key] == INITIAL_MARKER}
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{empty_squares(brd).join(', ')})."
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "That is an invalid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  brd[empty_squares(brd).sample] = COMPUTER_MARKER
  p brd
end
board = initialize_board
loop do
  display_board(board)
  player_places_piece!(board)
  display_board(board)
  computer_places_piece!(board)
  display_board(board)
end

