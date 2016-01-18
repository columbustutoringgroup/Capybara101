Feature: Logout
  In order to keep out the bad guys
  As a user
  I want to have to be able to logout of my profile

  Scenario: Logout User
    Given the secret page
    When I click the logout button
    Then I should see the logout page
    