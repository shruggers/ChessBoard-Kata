class Chessboard
  attr_accessor :grid, :output

  def initialize(output = $stdout)
    self.output = output
    self.grid = []
  end

  def puts(input)
    self.output << input
  end

end

class Pawn
  attr_accessor :chessboard, :position

  def initialize(*args)
    self.position = []
    self.chessboard = args.first
  end

  def move_to(column,row)
    self.chessboard.puts "Pawn to #{column}#{row}"
    self.position = [column,row]
  end

end

class Knight
end
