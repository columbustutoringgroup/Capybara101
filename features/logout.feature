Feature: Logout Page
  In order to lock the page when we are finished
  As a user
  I want get redirected back to the login page after logging out
    and not be able to return to the secret page

  Scenario: Logout User
    Given I am logged in
    And I am on my dashboard
    When I click log out
    Then I should see the index page
    And I should not have access to the secret page
