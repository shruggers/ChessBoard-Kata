require 'spec_helper'
require 'chess_board'

describe ChessBoard do
  subject { ChessBoard.new }
  
  describe "#has_square?" do
    it { subject.should have_square "A1" }
    it { subject.should have_square "A8" }
    it { subject.should have_square "H1" }
    it { subject.should have_square "H8" }
    
    it { subject.should_not have_square "A9" }
  end
  
  describe "#move message" do
    let(:message) { "G'day" }
    before { subject.move_made message }
    
    its(:last_move) { should == "G'day" }
  end
end