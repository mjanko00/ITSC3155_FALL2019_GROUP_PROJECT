Feature: Create an account
  
  As a food journal user
  So that I can easily contribute content to my journal
  I want to be able to create an account
  
Scenario: As a food journal user I want to be able to create an account
  Given I am on the home page
  When I click on the "Sign Up" link
  Then I should be on the "New User" page
  And I should see the "Name" field
  And I should see the "Email" field
  And I should see the "Password" field
  And I should see the "Password confirmation" field
  