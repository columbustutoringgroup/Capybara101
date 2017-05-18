Feature: Logout Page
	In order to reset user
	As a user
	I want to logout to leave private page

	Scenario: Authenticated User
		Given the private page
		When I click logout link
		Then I should go back to home page
