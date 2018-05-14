Feature: Logout Page
  In order to keep out the bad guys
  As a user
  I want to be able to logout of my account

  Scenario: User Logging Out
    Given I log in with proper credentials
    When I click on the "Logout" button
    Then I am logged out of my account
    And I should see the logout page
