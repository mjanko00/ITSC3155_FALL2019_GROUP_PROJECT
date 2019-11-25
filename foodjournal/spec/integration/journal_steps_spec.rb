require 'rails_helper.rb'

feature "Food journal user can sign up, log in, create a new food journal entry, and comment on their post." do
    scenario "Food journal user successfuly navigates to the sign up page" do
       visit root_path
       expect(page).to have_content("My Food Journal")
       click_link ("Sign Up")
       expect(page).to have_content("New User")
       expect(page).to have_content("Name")
       expect(page).to have_content("Password")
       expect(page).to have_content("Password confirmation")
    end
end