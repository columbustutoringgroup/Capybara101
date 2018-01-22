Feature: Login Page
  In order to keep out the bad guys
  As a user
  I want to have to login to see my private page

  Scenario: Authenticated User
    Given the login page
    When I login with username and password lklingler
    Then I should see the secret page with username lklingler shown
