Feature: Logout Page
  In order to keep out the bad guys
  As an authenticated user
  I want to have to logout to leave my private page

  Scenario: Authenticated User

    Given the private page with authenticated user

    When I log out
    Then I should see the logout page

    When I go to the private page
    Then I should not see my private information

