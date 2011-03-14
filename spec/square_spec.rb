require 'spec_helper'

describe Square do
  describe "A1" do
    subject { Square.new "A1" }
    its(:rank) { should == 1 }
    its(:file) { should == 1 }
  end
end
