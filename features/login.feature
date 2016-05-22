Feature: Login Page
  In order to keep out the bad guys
  As a user
  I want to have to login to see my private page

  Scenario: Authenticated User
    Given the login page
    When I log in with username of "test" and password of "test"
    Then I should see the "dashboard" page
    And I should see the message "This is the secret page"
    And I should see the message "Your username is test"

  Scenario: Non-authenticated User
    Given the login page
    When I log in with username of "test" and password of "atest"
    Then I should see the "login" page
    And I should see the message "Your username & password did not match"
    
  Scenario: Blank username and password
    Given the login page
    When I log in with username of "" and password of ""
    Then I should see the "login" page
    And I should see the message "Username and or password cannot be blank"
    