WIN_COMBINATIONS= [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]
  
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, player)
   board[index] = player
end

def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board [index] == nil
   taken = false
  else
    taken = true
  end
end

def valid_move?(board, index)
 if position_taken?(board,index) != true && index.between?(0, 8)
    true 
  else
    false
  end
end

def turn_count(board)
 counter = 0
  board.each do |space|
    if space == "X" || space=="O"
    counter += 1 
    end
  end
counter
end

def current_player(board)
  num = turn_count(board)
  if num % 2 == 0
    return "X"
  else
    return "O"
  end
end

def turn(board)
  puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
      if valid_move?(board, index) == true
        move(board, index)
           # move(board, index, player = "X")
      else
        puts "Please enter 1-9:"
          input = gets.strip
          index = input_to_index(input)
           valid_move?(board, index)
      end
  display_board(board)  
end