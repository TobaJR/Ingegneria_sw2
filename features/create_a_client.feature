Feature: create a client
In order to keep track of clients
As a user
I want to create a new client

    Scenario: create a valid client
    Given I am on the list of clients
    When I click on "New Client"
    And I fill in the form with valid Email
    Then I should see the new client in the list

    Scenario: create an invalid client
    Given I am on the list of clients
    When I click on "New Client"
    And I fill in the form with an invalid Email
    Then I should see an error
