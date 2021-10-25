require "rails_helper"

feature "User goes to the homepage" do 
    scenario "successfully" do 
        visit root_path

        expect(page).to have_css 'h1', text: 'Checklist'
    end
end