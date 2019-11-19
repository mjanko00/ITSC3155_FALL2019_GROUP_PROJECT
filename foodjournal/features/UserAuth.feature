Feature: Create/Login to an account
  
  As a food journal user
  So that I can easily contribute content to my journal
  I want to be able to create an account or login to an existing account
  
Scenario: As a food journal user I want to navigate from the homepage to the signup form
  Given I am on the home page
  When I click on the "Sign Up" link
  Then I should be on the "New User" page
  And I should see the "Name" field
  And I should see the "Email" field
  And I should see the "Password" field
  And I should see the "Password confirmation" field
  
Scenario: As a food journal user I want to navigate from the homepage to the login form
  Given I am on the home page
  When I click on the "Log In" link
  Then I should be on the "Login" page
  And I should see the "Email" field
  And I should see the "Password" field
  