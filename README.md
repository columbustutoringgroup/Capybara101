# Testing With Capybara

__Skill Level:__ Beginner  
__Time Limit:__ 30 minutes  

The aim of this challenge is to introduce you to acceptance testing. Your job will be to create automated tests using Capybara & Cucumber that mimic a user logging into the site and navigating to a special page.

__NOTE:__ _To login, your username must be the same as your password._

Capybara helps us test web applications by simulating how a real user would interact with an app. 

## Instructions
1. Clone the repo to your computer and bundle its gems
2. Run the application `bundle exec rackup -p 4567` then navigate to `localhost:4567` in your browser and see what the app does
3. Then run your cucumber tests `cucumber features`
4. View the cucumber `login.feature` that's been created for you
5. Fill out the login `step_definitions` so that they pass
6. Then complete the `logout.feature` and its steps to test logging out a user
7. Review the considerations below and refactor the features or step definitions as needed.

## Considerations
- What needs to be tested to ensure that the user authentication functionality of this app works correctly?
- Besides the faulty password scheme, what's the other glaring authentication problem with this application?
- Cucumber is not a big fan of duplicating `step_definitions`, do you think you might reuse some of the steps from `login_steps` for your new scenarios.

## Resources
- [Capybara Docs](https://github.com/jnicklas/capybara)
- [Cucumber Documentation](http://cukes.info/)
