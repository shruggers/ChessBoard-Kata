Given %r/^I have a White Pawn at ([A-Z][0-9])$/ do |square|
  @board ||= ChessBoard.new
  @white_pawn = WhitePawn.new(@board, square)
end

Given %r/^I have a Black Knight at ([A-Z][0-9])$/ do |square|
  @board ||= ChessBoard.new
  @black_knight = BlackKnight.new(@board, square)
end

When %r/^I move the Pawn to ([A-Z][0-9])$/ do |square|
  begin 
    @white_pawn.move_to(square)
  rescue Piece::IllegalMoveError => e
    @current_error = e
  end
end

Then %r/^I should be warned of an illegal move message$/ do
  @current_error.should be_kind_of Piece::IllegalMoveError
end

When %r/^I move the Knight to ([A-Z][0-9])$/ do |square|
  begin 
    @black_knight.move_to(square)
  rescue Piece::IllegalMoveError => e
    @current_error = e
  end
end

Then %r/^I should be shown "([^"]*)"$/ do |expected_output|
  @board.last_move.should == expected_output
end

Given %r/^the valid moves are$/ do |moves_table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end

Given %r/^the game has just started$/ do
  @board = ChessBoard.new
  @white_pawn = WhitePawn.new(@board)
  @black_knight = BlackKnight.new(@board)
end

Given %r/^the Pawn is on ([A-Z][0-9])$/ do |square|
  @white_pawn.starts_at square
end

Given %r/^the Knight is at ([A-Z][0-9])$/ do |square|
  @black_knight.starts_at square
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
