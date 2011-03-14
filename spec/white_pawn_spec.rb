require 'spec_helper'

describe WhitePawn do
  
  subject { WhitePawn.new(chess_board, initial_square) }
  
  let(:initial_square) { "A1" }
  let(:chess_board) { ChessBoard.new }
  
  specify "it should have the chess_board we created it with" do
    subject.chess_board.should == chess_board
  end

  specify "it should be at the initial square" do
    subject.square.should == initial_square
  end
  
  describe "#move_to" do
    before do
      subject.move_to "A2"
    end
    
    it "should be at the new square" do
      subject.square.should == "A2"
    end
  end
end