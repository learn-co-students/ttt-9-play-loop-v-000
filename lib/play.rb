# Define your play method below
def play(board)
  turn_count = 1
  until turn_count > 9 do
    turn(board)
    turn_count+=1
  end
end

def welcome_intro
  puts "Weclcome to Tic Tac Toe!"
end

def turn(board, player="X")
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if !valid_move?(board, index)
    turn(board)
  end
  move(board,index,player)
  display_board(board)
end

def clear_screen
  puts "\e[H\e[2J"
end

def valid_move?(board, index)
  index >= 0 && index <= 8 && !position_taken?(board,index)
end

def position_taken?(board,index)
  board[index] == "X" || board[index] == "Y"
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def move(board,index,player="X")
  board[index] = player
end
