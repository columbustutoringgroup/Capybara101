Feature: Logout Page
  In order to keep out the bad guys
  As a user
  I want to be able to logout of my account

  Scenario: User Logging Out
    Given I log in with correct credentials
    When I click on the "Logout" button
    Then I should see the logout page
