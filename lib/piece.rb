class Piece
  class IllegalMoveError < RuntimeError
  end
  
  attr_reader :chess_board, :square
  
  def initialize(chess_board, initial_square = nil)
    @chess_board = chess_board
    starts_at(initial_square) if initial_square
  end
  
  def starts_at(square)
    if chess_board.has_square?(square)
      @square = square
    else
      raise IllegalMoveError, "#{square} is not on the board"
    end
  end

  def move_to(square)
    starts_at(square)
    chess_board.move_made "#{name} to #{square}"
  end
end