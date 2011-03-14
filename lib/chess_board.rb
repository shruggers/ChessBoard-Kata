class ChessBoard
  def has_square?(square)
    square = Square.new(square)
    (1..8).include?(square.rank) and (1..8).include?(square.file)
  end
end
