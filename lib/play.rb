# Helper Methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index
def input_to_index(user_input)
  user_input.to_i - 1
end

#move
def move(board, index, current_player = "X")
  board[index] = current_player
end

#position_taken
def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

#valid_move
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

# Define your play method below

def play(board)
turn = 0
while turn <= 8
turn(board)
  turn += 1
end
end
