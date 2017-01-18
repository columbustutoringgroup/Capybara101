Feature: Logout
  In order for a user to log out of their account

  Scenario: User Logout
    Given the user is logged in
    When the user clicks the logout button
    Then the user should be directed to the login page
