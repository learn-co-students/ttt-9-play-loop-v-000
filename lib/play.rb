# Helper Methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  user_entry = gets.strip.to_i - 1
  
  if
    valid_move?(board,user_entry) == true 
    move(board,user_entry)
    display_board(board)
  else
      until valid_move?(board,user_entry) == true do
       puts "That is not a valid move. Please enter 1-9:"
        user_entry = gets.strip.to_i - 1
      end
      move(board,user_entry)
      display_board(board)
  end
end

# Define your play method below
def play(board)
  counter = 1 

  while counter <= 9 do
    turn(board)
    counter += 1
    end
end