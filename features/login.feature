Feature: Login Page
  In order to keep out the bad guys
  As a user
  I want to have to login to see my private page

  Scenario: Successfully Authenticated User
    Given the login page
    When I log in with the username 'Capybara' and the password 'Capybara'
    Then I should be in '/dashboard'
    And I should see 'This is the secret page'
    And I should see my username: 'Capybara'

  Scenario: Invalid Credentials
    Given the login page
    When I log in with the username 'Capybara' and the password 'SeaOtter'
    Then I should be in '/login'
    And I should see 'Your username & password did not match'

  Scenario: Blank Credentials
    Given the login page
    When I log in with the username '' and the password ''
    Then I should be in '/login'
    And I should see 'Neither the username nor the password may be empty'

  Scenario: Authenticated Home
    Given the login page
    When I log in with the username 'CMM' and the password 'CMM'
    And I go home
    Then I should be in '/dashboard'
    And I should see 'This is the secret page'
    And I should see my username: 'CMM'

  Scenario: Unauthenticated Access
    Given the login page
    When I visit '/dashboard'
    Then I should be in '/'