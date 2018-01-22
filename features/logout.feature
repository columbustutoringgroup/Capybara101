Feature: Logout Page
  In order to keep out the bad guys
  As a user
  I want to be able to logout after I am done using the secret page

  Scenario: Authenticated User
    Given the secret page reached via credentials of lklingler
    When I click Logout
    Then I should see the login page with the message "You have been logged out" shown
