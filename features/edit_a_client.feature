Feature: edit a client
In order to maintain my clients up to date
As a user
I want edit a client

  Background:
  Given there is a client called 'Massimo Maffei'

    Scenario: edit a client with valid data
    Given I am on the list of clients
    When I click on "Edit"
    And I change the name to "Salvatore"
    And I click on "Update Client"
    Then the name of client is "Salvatore"

    Scenario: edit a client with invalid data
    Given I am on the list of clients
    When I click on "Edit"
    And I change the name to ""
    And I click on "Update Client"
    Then I should see an error
