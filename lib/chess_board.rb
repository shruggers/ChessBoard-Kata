class ChessBoard
  def has_square?(square)
    square = Square.new(square)
    (1..8).include?(square.rank) and (1..8).include?(square.file)
  end
  
  def move_made(message)
    @last_move = message
  end
  
  attr_reader :last_move
end
