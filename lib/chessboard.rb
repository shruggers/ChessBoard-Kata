class Chessboard
  def initialize
    @status_message = "Ready"
  end
  
  def add(piece, square)
    
  end
  
  def move(from_square, to_square)
    to_col, to_row = to_square[0], to_square[1].to_i
    if to_row > 8 || to_row < 1 || !%w[ A B C D E F G H ].include?(to_col)
      @status_message = "Impossible move - outside board"
    end
  end
  
  def status_message
    @status_message
  end
end

class Pawn
  
end

class Knight
  
end
