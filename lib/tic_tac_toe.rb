class TicTacToe
  def initialize(board = nil)
    @board = board || array.new(9," ")
  end

  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  
  def display_board(
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index
    @input.to_i - 1
  end
  
  def move
    @board[@index] = @mark
  end
  
  def position_taken?
    !(@board[@index].nil? || @board[@index] == " ")
  end

def valid_move?
  @index.between?(0,8) && !position_taken?
end

def turn
  puts "Please enter 1-9:"
  @input = gets.chomp
  @index = input_to_index
  if valid_move?
    move(b
    display_board(board)
  else
    turn(board)
  end
end

def turn_count(board)
  board.count {|mark| mark == "X" || mark == "O"}
end

def current_player(board)
  turn_count(board).even? ? "X" : "O"
end

def won?(board)
  WIN_COMBINATIONS.detect do |combination|
  combination.all? {|win_index| board[win_index] == "X"} || combination.all? {|win_index| board[win_index] == "O"}
  end
end

def full?(board)
  board.all? {|space| space == "X" || space == "O"}
end
  
def draw?(board)
  full?(board) && !won?(board) 
end
  
def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  if won?(board).class == Array
    board[won?(board)[0]]
  end
end

def play(board)
  until over?(board) do
    turn(board)
  end
  if won?(board)
    puts  "Congratulations #{winner(board)}!"
  else
    puts "Cat's Game!"
  end
end
end







