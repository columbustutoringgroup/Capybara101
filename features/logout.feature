Feature: Logout Feature
  In order to keep out the bad guys
  As a user
  I want to have to be able to safely exit my appplication

  Scenario: Logout of Application
    Given the login page
    When I log in with proper credentials
    Then I should see the secret page
    Then I log out
    Then I should successfully log out
