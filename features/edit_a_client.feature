
  Feature: edit a client
  In order to keep track of clients
  As a user
  I want to edit a client

  Scenario: edit a client with valid data
    Given I am on the list of clients
    When I click on "Edit"
    And I fill in the form with valid data
    Then I should see the changing in the list

    Scenario: edit a client with invalid data
      Given I am on the list of clients
      When I click on "Edit"
      And I fill in the form with invalid data
      Then I shouldn't see the changing in the list
