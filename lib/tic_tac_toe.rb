
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def display_board(board)
  puts(" #{board[0]}  |  #{board[1]}  |  #{board[2]} ")
  puts("-----------")
  puts(" #{board[3]}  |  #{board[4]}  |  #{board[5]} ")
  puts("-----------")
  puts(" #{board[6]}  |  #{board[7]}  |  #{board[8]} ")
end

def input_to_index(input)
  index = input.to_i + 1
end

def player_move(board, index, player)
  board[index] = player
end

def position_taken(board, index)
  board[index] == "X" || board[index] == "O"
end

def valid_move(board, index)
  !position_taken && index >= 1 && index <= 9
end

def turn(board, player)
  display_board(board)
  puts "Please enter 1-9:"
  gets input
  index = input_to_index(input)
  if valid_move(board, index)
    move(board,index,player)
    display_board(board)
    (player == "X") ? player = "O" : player = "X"
  else  
    turn(board, player)
  end
end


  