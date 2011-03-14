require 'spec_helper'
require 'chessboard'

describe Chessboard do
  describe "initialize"do
    let(:output) { mock "output" }

    subject { Chessboard.new( output ) }

    its(:grid) { should == [] }
    its(:output) { should == output }
  end

  describe "grid" do
    it "should accept pieces" do
      board = Chessboard.new
      piece = mock "piece"
      board.grid << piece
      board.grid.should include piece
    end
  end

  describe "puts" do
    let(:chessboard) { Chessboard.new output }
    let(:output) { [] }
    let(:input) { "some input" }

    subject { chessboard.puts input }

    it "should display output" do
      subject
      output.should include input
    end
  end
end

describe Pawn do
  let(:chessboard) { mock "chessboard" }
  let(:column) { 'A' }
  let(:row) { '3' }
  let(:pawn) { Pawn.new chessboard, column, row }

  describe "initialize" do
    subject { pawn }

    its(:chessboard) { should == chessboard }
    its(:position) { should == [] }
  end

  describe "move_to" do
    before do
      chessboard.stub(:puts)
    end

    subject { pawn.move_to 'A', '7' }

    it "should print to the chessboard" do
      chessboard.should_receive(:puts).with(anything)
      subject
    end
    it "should set the pawns position" do
      subject
      pawn.position.should == ['A', '7']
    end
  end
end
