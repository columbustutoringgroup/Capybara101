#Add your codez here

Feature: Logout Action
  In order to not let other people access my account
  As a user
  I want to have to logout button

  Scenario: Authenticated User
    Given I'm logged in
    When I visit the secret dashboard page
    And I log out
    Then I should see the home page with a logged out message
