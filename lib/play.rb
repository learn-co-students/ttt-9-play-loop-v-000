# Helper Methods
def display_board(board)
  system 'clear'
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

def computer_makes_choice(board)
  empty_squares = []
  board.each_with_index do |marker, idx|
    empty_squares << idx if marker == " "
  end
  empty_squares
end

def joinor(array)
  if array.length > 1
    array[-1] = "or #{array[-1]}"
  else
    array
  end
  array.join(", ")
end

def valid_spaces(board)
  computer_makes_choice(board).map{|e| e + 1}
end


def player_turn(board)
  puts "Please enter #{joinor(valid_spaces(board))}:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
  else
    player_turn(board)
  end
  display_board(board)
end

def computer_turn(board)
  computer_choice = computer_makes_choice(board).sample
  board[computer_choice] = "O"
  display_board(board)
end

# Define your play method below
def play(board)
  number_of_turns = 0
  loop do
    player_turn(board)
    number_of_turns += 1
    break if number_of_turns == 9
    computer_turn(board)
    number_of_turns += 1
  end
end

# revisiting this lab - added to code to (1) include the computer
# as a second player (2) use string interpolation and a custom #joinor
# method to advise player of the remaining spaces that are available
# (3) make use of a loop to continue game play until 9 turns have been taken
# (4) a goodbye message at the end of the game
