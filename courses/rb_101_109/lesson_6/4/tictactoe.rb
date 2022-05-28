# Tic Tac Toe is a 2 player game played on a 3x3 board. Each player takes a turn and
# marks a square on the board. First player to reach 3 squares in a row, including diagonals,
# wins. If all 9 squares are marked and no player has 3 squares in a row, then the game is a tie.
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

# 1. Display the initial empty 3x3 board.
# 1a. Output empty board

def display_board(brd)
puts ""
puts "     |     |"
puts " #{brd[1]}   | #{brd[2]}   |  #{brd[3]}"
puts "     |     |"
puts "-----+-----+-----"
puts "     |     |     "
puts " #{brd[4]}   | #{brd[5]}   |  #{brd[6]}"
puts "     |     |"
puts "-----+-----+-----"
puts "     |     |"
puts " #{brd[7]}   | #{brd[8]}   |  #{brd[9]}"
puts "     |     |"
puts ""
end

# 1b. Create hash to represent status of display_board

def initialize_board
  new_board = {}
  (1..9).each {|num| board_hash[1] = ' '} 
  new_board
end

# 1c. Pass in board hash into display_board 

board = initialize_board
display_board(board)

# 2. Ask the user to mark a square.
# 3. Computer marks a square.
# 4. Display the updated board state.
# 5. If winner, display winner.
# 6. If board is full, display tie.
# 7. If neither winner nor board is full, go to #2
# 8. Play again?
# 9. If yes, go to #1
# 10. Good bye!


display_board