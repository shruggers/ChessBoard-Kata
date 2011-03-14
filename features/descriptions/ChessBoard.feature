Feature: Boundaries of the board.
  In order to obey the rules of Chess
  As a player
  I want to be prevented from entering moves outside the boundary of the board.

  Scenario: Pawn at top.
    Given I have a White Pawn at A8 
    # We're ignoring this for now
    And I have a Black Knight at A1
    When I move the Pawn to A9
    # We made this the special case "impossible move"
    Then I should be warned of an illegal move message

  # This passed as soon as we added the Move Knight step as
  # we implemented all the impossible move rules in RSpec
  Scenario: Knight heads off board
    Given I have a Black Knight at G8
    And I have a White Pawn at A1
    And I move the Pawn to A2
    When I move the Knight to I7
    Then I should be warned of an illegal move message
