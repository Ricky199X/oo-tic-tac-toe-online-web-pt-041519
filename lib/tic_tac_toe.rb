class TicTacToe
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input.to_i - 1 
  end 
  
  def move(index, token = "X")
    @board[index] = token
  end 
  
  def position_taken?(index)
    if @board[index] == " "
      return false
    else 
      true
    end
  end 
  
  def valid_move?(index)
    if !position_taken?(index) && index == 0...9
      return true
    else
      false
    end
  end
  
 def turn_count
    @board.count { |player_move| player_move == "X" || player_move == "O" }
  end
  
  def current_player
    turn_count % 2 == 0 ? "O" : "X"
  end
  
  # def turn
  #   puts "Enter a position between 1-9"
  #   user_input = gets.chomp
  #   input_to_index(user_input)
    
  #   if valid_move?
  #     move(user_input)
  #   else 
  #     turn
  #   end
  # end
end