Feature: Logging Out
	To prevent access from unauthorized individuals
	as a user
	I want to be able to log out

	Scenario: User Logout
		Given a logged in user
		When clicking Logout
		Then I should see the logout page
