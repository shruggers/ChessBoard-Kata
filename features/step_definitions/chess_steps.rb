Given %r/^I have a White Pawn at ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
end

Given %r/^I have a Black Knight at ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
end

When %r/^I move the Pawn to ([A-Z])([0-9])$/ do |column,row|
  @pawn.move_to column, row
end

Then %r/^I should be warned of an illegal move message$/ do
  pending # express the regexp above with the code you wish you had
end

When %r/^I move the Knight to ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
end

Then %r/^I should be shown "([^"]*)"$/ do |expected_output|
  @output.shift.should == expected_output
end

Given %r/^the valid moves are$/ do |moves_table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Given %r/^the game has just started$/ do
  @output = []
  @chessboard = Chessboard.new @output
end

Given %r/^the Pawn is on ([A-Z])([0-9])$/ do |column,row|
  @pawn = Pawn.new(@chessboard,column,row)
end

Given %r/^the Knight is at ([A-Z])([0-9])$/ do |column,row|
  @knight = Knight.new(@chessboard,column,row)
end

Then %r/^Pawn should be at ([A-Z])([0-9])$/ do |column,row|
  @pawn.position.should == [column,row]
end

Given %r/^the game has not just started$/ do
  @output = []
  @chessboard = Chessboard.new @output
end

Given %r/^the valid moves are ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
end

When %r/^the Pawn moves to ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
end

Then %r/^the Knight should be taken$/ do
  pending # express the regexp above with the code you wish you had
end

Then %r/^the Pawn should be at ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
end

Then %r/^the Knight should be at ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
end

Then %r/^the Pawn should be taken$/ do
  pending # express the regexp above with the code you wish you had
end
