require 'rails_helper.rb'

feature "Food journal user can sign up, log in and create a new food journal entry" do
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
    
    scenario "Food journal user successfully navigates to the log in page" do
       visit root_path
       expect(page).to have_content("My Food Journal")
       click_link ("Log In")
       expect(page).to have_content("Login")
       expect(page).to have_content("Email")
       expect(page).to have_content("Password")
    end
    
    #  All scenarios below this line will not be able to pass because of User Authentication
    #  I am still writing them for future implementation
    #-------------------------------------------------------------------------------------
    scenario "Food journal user succeffully logs in to an existing user" do
        visit login_path
        expect(page).to have_content("Login")
        fill_in "Email", with: "testemail123@testing.com"
        fill_in "Password", with: "Testing123"
        click_button "Login"
        expect(page).to have_content("My Food Journal")
        expect(page).to have_content("Welcome Test Name!")
    end
    
    scenario "Food journal user successfully naviagtes to the new journal entry page" do
        visit sessions_path
        expect(page).to have_content("My Food Journal")
        expect(page).to have_content("Welcome Test Name!")
        click_link ("View My Journal")
        expect(page).to have_content("Food Entries")
    end
    
    scenario "Food journal user successfully creates a new journal entry" do
        visit new_journal_path
        expect(page).to have_content("Food Entries")
        click_button "New Journal Entry"
        expect(page).to have_content("New Food Journal Entry")
        select "Breakfast", from: "Meal Type"
        fill_in "Food Item", with: "Food Item"
        fill_in "Serving Size", with: "1"
        fill_in "Calories", with: "100"
        fill_in "Proteins", with: "50"
        fill_in "Carbs", with: "35"
        fill_in "Fats", with: "20"
        click_button "Create Journal"
        expect(page).to have_content("Food Entry:")
        expect(page).to have_content("Meal Type: Breakfast") 
        expect(page).to have_content("Food Name: Eggs")
        expect(page).to have_content("Serving Size: 1") 
        expect(page).to have_content("Calories: 100")
        expect(page).to have_content("Proteins: 50")
        expect(page).to have_content("Carbs: 35")
        expect(page).to have_content("Fats: 20")
    end
end