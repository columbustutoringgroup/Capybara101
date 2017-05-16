Feature: Login Page
  In order to keep out the bad guys
  As a user
  I want to have to login to see my private page

  Scenario: Authenticated User
    Given the login page
    When I log in with user 'gwadej' and password 'gwadej'
    Then I should see the secret page

  Scenario: Unauthenticated User
    Given the login page
    When I log in with user 'gwadej' and password 'foo'
    Then I should see the authentication error message
