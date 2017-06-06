Feature: Logout
  In order to hide my details with others around
  As a user
  I want to be able to logout

  Scenario: Authenticated User - Secret Page
    Given I am authenticated
    When I see the secret page
    And I press logout
    Then I should see the logout page
