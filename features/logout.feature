#Add your codez here

Feature: Logout Page
  In order to keep my account protected
  As a user
  I want to be able to logout when I'm done

  Scenario: Authenticated User Logging Out
    Given the dashboard
    When I log out
    Then I should see the home page
