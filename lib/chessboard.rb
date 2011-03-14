class ChessMaster2000
  attr_reader :messages
  def initialize
    @messages = []
  end

  def report_move(move)
    @messages << "Pawn to #{move}"
  end
end

class ChessBoard
  def initialize(lineup, chess_master)
    @lineup = lineup
    @master = chess_master
  end

  def move(piece, movement)
    move = movement.fetch(:to)
    @lineup[piece] = move
    @master.report_move(move)
  end

  def position_of(piece)
    @lineup.fetch(piece)
  end
end

class Pawn
end
