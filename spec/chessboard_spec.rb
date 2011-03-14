require 'spec_helper'
require 'chessboard'

# Scenario: Pawn at top.
#   Given I have a White Pawn at A8 
#   And I have a Black Knight at A1
#   When I move the Pawn to A9
#   Then I should be warned of an illegal move message

describe "Chessboard" do
  let(:chessboard) { Chessboard.new }

  it "starts in a Ready state" do
    chessboard.status_message.should eq "Ready"
  end
  
  %w[ A B C D E F G H ].each do |col|
    %w[ 1 2 3 4 5 6 7 8 ].each do |row|
      it "CURRENTLY lets you move any piece anywhere" do
        chessboard.add(:mock_piece, "A8")
        chessboard.move("A8", "#{col}#{row}")
        chessboard.status_message.should eq "Ready"
      end
    end
  end
  
  context "trying to move outside [A-H][1-8]" do
    it "above row 8" do
      chessboard.add(:mock_piece, "A8")
      chessboard.move("A8", "A9")
      chessboard.status_message.should eq "Impossible move - outside board"
    end
    
    it "below row 1" do
      chessboard.add(:mock_piece, "A8")
      chessboard.move("A8", "A0")
      chessboard.status_message.should eq "Impossible move - outside board"
    end
    
    it "invalid column" do
      chessboard.add(:mock_piece, "A8")
      chessboard.move("A8", "I1")
      chessboard.status_message.should eq "Impossible move - outside board"
    end
  end
end