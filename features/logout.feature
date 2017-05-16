Feature: Logout Page
  In order to allow users to protect themselves
  As a user
  I want to be able logout of my account

  Scenario: Logged-in User
    Given I am logged in
    When I visit the dashboard
    And I select logout
    Then I should see the homepage with a logout message