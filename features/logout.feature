Feature: Logout Page
  In order to keep out the bad guys
  As a user
  I want to logout to hide my private page

  Scenario: Authenticated User
    Given I am a logged in user
    Given the logout page
    When I visit my secret page
    Then I should not see my information
    
