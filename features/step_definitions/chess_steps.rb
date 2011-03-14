Given %r/^I have a White Pawn at ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
end

Given %r/^I have a Black Knight at ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
end

When %r/^I move the Pawn to ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
end

Then %r/^I should be warned of an illegal move message$/ do
  pending # express the regexp above with the code you wish you had
end

When %r/^I move the Knight to ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
end

Then %r/^I should be shown "([^"]*)"$/ do |expected_output|
  @chessmaster.messages.should include(expected_output)
end

Given %r/^the valid moves are$/ do |moves_table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Given %r/^the game has just started$/ do
end

Given %r/^the Pawn is on ([A-Z][0-9])$/ do |square|
  @chessmaster = ChessMaster2000.new
  @board = ChessBoard.new({square => Pawn.new}, @chessmaster)
end

Given %r/^the Knight is at ([A-Z][0-9])$/ do |square|
  #todo: do stuff in here eventually
end

Then %r/^Pawn should be at ([A-Z][0-9])$/ do |square|
  @board.position_of(@pawn).should == square
end

Given %r/^the game has not just started$/ do
  pending # express the regexp above with the code you wish you had
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
