Feature: Logout
  In order to keep my account secure
  As a user
  I want to be able to log out

  Scenario: Log out User
    Given that "Maximus" is logged in
    When they click the 'Logout' link
    Then they should be logged out