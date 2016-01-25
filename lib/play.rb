board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, position)
#   if
    (1..9).include?(position.to_i) && !position_taken?(board, position.to_i-1)
#     return true
#   else
#     return false
#   end
end

def position_taken?(board, position)
  if board[position] == "X" || board[position] == "O"
    return true
  end

  if board[position] == " " || ""
    return false
  elsif board[position] == "nil"
    return false
  else
    return false
  end
end

def move(board, position, player="X")
  board[position.to_i-1] = player
  puts display_board(board)
  puts "#{player}"
end

def turn(board)
  puts "Please enter 1-9:"
  position=gets.chomp
  position.to_i

  if valid_move?(board, position) == true
    puts move(board, position)
  else
    loop do
      puts "Please enter 1-9:"
      position=gets.chomp
      position.to_i
      break if valid_move?(board, position) == true
    end
  end
end

def play(board)
  
  counter = 0 
  while counter <= 9
    counter += 1
    puts turn(board)
  end
end

