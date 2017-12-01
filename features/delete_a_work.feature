Feature: delete a work
In order to keep track of works
As a user
I want to delete a client work

  Background:
  Given there is a work

    Scenario: delete a work
    Given I am on the list of works
    And I click on "Destroy"
    Then I shouldn't see the work in the list
