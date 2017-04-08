def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.to_i.between?(0,8)
    if board[index] == " " || board[index] == ""|| board[index] = nil
      true
    elsif
      false
    end
  end
end



def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, token="X")
  board[index] = token
  board
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, token="X")
    puts token # testing, still work without this line
  elsif
    turn(board)
  end
  display_board(board)
end


# Define your play method below

def play(board)
    int = 0
  while int < 9 do
    turn(board)
    int += 1
  end
end
