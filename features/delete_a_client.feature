Feature: delete a client
In order to keep track of clients
As a user
I want to delete a client client

  Background:
  Given there is a client called 'Massimo Maffei'

    Scenario: delete a client
    Given I am on the list of clients
    When I click on "Destroy"
    Then I shouldn't see the client in the list
