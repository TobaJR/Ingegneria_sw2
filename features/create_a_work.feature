Feature: create a work
In order to keep track of works
As a user
I want to create a new work

  Background:
    Given there is a client called 'Massimo Maffei'

  Scenario: create a valid work
    Given I am on the list of works of "Massimo Maffei"
    When I click on "New Work"
    And I fill in the form with valid Note
    Then I should see the new work in the list

  Scenario: error when entering invalid note
    Given I am on the list of works of "Massimo Maffei"
    When I click on "New Work"
    And I fill in the form with an invalid Note
    Then I should see an error
