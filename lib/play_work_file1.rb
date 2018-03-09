# Define your play method below
def play(board)
  turn(board)
  index = 0
  until index == 10
  #while index < 10
    play(board)
  index += 1
end
end
