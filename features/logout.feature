Feature: Logout page

  Scenario: User logging out
    Given the login page
    When I log in with proper credentials
    And I press logout
    Then I should see the home page
