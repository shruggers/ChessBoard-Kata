require 'spec_helper'
require 'chessboard'

describe "Chessboard" do
  let(:piece) { double(:piece) }

  context 'after moving a piece' do
    it 'the piece should be found in the new position' do
      board = ChessBoard.new(piece => 'some irrelevant position')
      board.move(piece, :to => 'A9')
      board.position_of(piece).should == 'A9'
    end

    it 'reports moves to the chessmaster' do
      chess_master = double(:chess_master)
      board = ChessBoard.new({piece => 'some irrelevant position'}, chess_master)
      chess_master.should_receive(:report_move).with('A9')
      board.move(piece, :to => 'A9')
    end
  end
end
