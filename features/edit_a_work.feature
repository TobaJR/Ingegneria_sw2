Feature: edit a work
In order to maintain my works up to date
As a user
I want edit a work

 Background:
 Given there is a work

    Scenario: Edit the note of work
    Given I am on the list of works
    And I click on "Edit"
    When I change the note to "cambio nota"
    And I click on "Update Work"
    Then The note of work is "cambio nota"

    Scenario: Edit a work with invalid data
    Given I am on the list of works
    And I click on "Edit"
    When I change the note to ""
    And I click on "Update Work"
    Then I should see an error
