require 'spec_helper'

describe BlackKnight do
  let(:board) { ChessBoard.new }
  
  specify "it is created with a chessboard and a square" do
    lambda { BlackKnight.new(board, "A1") }.should_not raise_error
  end
end
