class Square
  attr_reader :file, :rank

  def initialize(square)
    square = square.downcase
    @file = ("a".."z").to_a.index(square[0]) + 1
    @rank = square[1].to_i
  end
end