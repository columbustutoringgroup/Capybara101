Feature: Logout Page
  If a user has successfully logged in,
  they should be able to logout and see
  a message informing them that it was successful.

Scenario:
  Given that a user has logged in with the correct credentials
  When a user logs out
  Then a logout message is displayed
  And the user is now on login page
