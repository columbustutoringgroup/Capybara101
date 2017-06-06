Feature: Logout
  In order to hide my details with others around
  As a user
  I want to be able to logout

  Scenario: Authenticated User - Secret Page
    Given the login page
    And I log in with the username 'Test' and the password 'Test'
    When I press logout
    Then I should be in '/logout'
    And I should see 'You have been logged out'