Feature: Logout
  In order to keep my account secure
  As a user
  I want to have to be able to logout

  Scenario: Authenticated User
    Given the secret page
    When I click the logout button
    Then I should be notified I have logged out.

    
