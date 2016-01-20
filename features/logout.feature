Feature: Logout Page
  In order to keep out the good guys good
  As a user
  I want to have to logout when I click logout

  Scenario: Authenticated User
    Given I am logged in
    When I visit the secret page
    And I log out
    Then I should see the home page with a logged out notification
    
