#Testing With Capybara

##Work in Progress

__Skill Level:__ Beginner  
__Time Limit:__ 30 minutes  

The aim of this challenge is to introduce you to acceptance testing. Your job will be to create automated tests using Capybara & Cucumber that mimic a user logging into the site and navigating to a special page.

__NOTE:__ _To login, your username must be the same as your password._

Capybara helps us test web applications by simulating how a real user would interact with an app. 

##Instructions
- Clone the repo to your computer and bundle its gems
- Run the application `bundle exec rackup -p 4567` then navigate to `localhost:4567` in your browser and see what the app does
- Then run your cucumber tests `cucumber features`
- View the cucumber `login.feature` that's been created for you
- Fill out its `step_definitions` so that they pass
- Then complete the `logout.feature` and its steps to test logging out a user

##Considerations
- What needs to be tested to ensure that the user authentication functionality of this app works correctly?
Username and password are equal (if you input the wrong password, you should not log in)
- Besides the faulty password scheme, what's the other glaring authentication problem with this application?

if you visit localhost:4567/dashboard, it will show the secret site
- Cucumber is not a big fan of duplicating `step_definitions`, do you think you might reuse some of the steps from `login_steps` for your new scenarios.
Use steps %{} and call the steps that you want to call
##Resources
- [Capybara Docs](https://github.com/jnicklas/capybara)
- [Cucumber Documentation](http://cukes.info/)
