Feature: edit a work
In order to
As a user
I want to edit a work

 Background:
  Given there is a work

  Scenario: Edit the note of work
  Given I am on the list of works of "Massimo Maffei"
  And I am on looking at the details of a work
  And I click on "Edit"
  When I change the note to "cambio titolo"
  And I click on "Update Work"
  Then I should see the changes

    Scenario: Edit a work with invalid data
    Given I am on the list of works of "Massimo Maffei"
    And I am on looking at the details of a work
    And I click on "Edit"
    When I change the work with invalid data
    And I click on "Update Work"
    Then I shouldn't see the changes
