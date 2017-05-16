Feature: Logout after Login
  In order to secure personal information
  As a logged in user
  I want to logout of the dashboard

  Scenario: Logout Successfully
    Given that I've logged into the secret page
    When I click Logout
    Then I should see the login page
    And I should see the message "You have been logged out"
    
