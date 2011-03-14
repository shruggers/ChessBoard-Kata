module ChessWorld
  def chessboard
    @chessboard ||= Chessboard.new
  end
end
World(ChessWorld)

Given %r/^I have a White Pawn at ([A-Z][0-9])$/ do |square|
  chessboard.add(Pawn.new, square)
  @pawn_square = square
end

Given %r/^I have a Black Knight at ([A-Z][0-9])$/ do |square|
  chessboard.add(Knight.new, square)
  @knight_square = square
end

When %r/^I move the Pawn to ([A-Z][0-9])$/ do |square|
  chessboard.move(@pawn_square, square)
end

Then %r/^I should be warned of an illegal move message$/ do
  chessboard.status_message.should eq "Impossible move - outside board"
end

When %r/^I move the Knight to ([A-Z][0-9])$/ do |square|
  chessboard.move(@knight_square, square)
end

Then %r/^I should be shown "([^"]*)"$/ do |expected_output|
  pending # express the regexp above with the code you wish you had
end

Given %r/^the valid moves are$/ do |moves_table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Given %r/^the game has just started$/ do
  pending # express the regexp above with the code you wish you had
end

Given %r/^the Pawn is on ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
end

Given %r/^the Knight is at ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
end

Then %r/^Pawn should be at ([A-Z][0-9])$/ do |square|
  pending # express the regexp above with the code you wish you had
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
