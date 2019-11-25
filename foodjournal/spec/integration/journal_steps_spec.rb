require 'rails_helper.rb'

feature "Food journal user can sign up, log in, create a new food journal entry, and comment on their post." do
    scenario "Food journal user successfully navigates to the sign up page" do
       visit root_path
       expect(page).to have_content("My Food Journal")
       click_link "Sign Up"
       expect(page).to have_content("New User")
       expect(page).to have_content("Name")
       expect(page).to have_content("Email")
       expect(page).to have_content("Password")
       expect(page).to have_content("Password confirmation")
    end
    
    scenario "Food journal user successfully creates a user" do
        visit signup_path
        expect(page).to have_content("New User")
        fill_in "Name", with: "Test Name"
        fill_in "Email", with: "TestEmail123@testing.com"
        fill_in "Password", with: "Testing123"
        fill_in "Password confirmation", with: "Testing123"
        click_button "Create User"
        expect(page).to have_content("User was successfully created.")
        expect(page).to have_content("Name: Test Name")
        expect(page).to have_content("Email: testemail123@testing.com")
    end
    
end