class Piece
  class IllegalMoveError < RuntimeError
  end
  
  attr_reader :chess_board, :square
  
  def initialize(chess_board, initial_square)
    @chess_board = chess_board
    move_to initial_square
  end
  
  def move_to(square)
    if chess_board.has_square?(square)
      @square = square
    else
      raise IllegalMoveError, "#{square} is not on the board"
    end
  end
end