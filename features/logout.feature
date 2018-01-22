Feature: Logout Page
  In order to keep my account safe when I leave my desk
  As a user
  I want to be able to log out of my private page

  Scenario: Logged-in User
    Given A logged-in user
    When I select the logout option
    Then I should see the login page