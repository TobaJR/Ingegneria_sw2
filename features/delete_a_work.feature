Feature: delete a work
In order to keep track of works
As a user
I want to delete a client work

  Background:
  Given there is a work

  Scenario: delete a work
    Given I am on the list of works of "Massimo Maffei"
    When I am on looking at the details of a work
    And I click on "Delete"
    Then I shouldn't see the work in the list
