Feature: Logout Page
  In order to keep out the bad guys
  As a user
  I want to have leave my private page when I logout

  Scenario: Logged-in User
    Given the secret page
    When I log out
    Then I should not see the secret page
    
