require "rails_helper" 

feature "User create list" do 
    scenario "successfully" do 
        visit root_path

        click_on "Add new item"
        fill_in "Title", with: "Go shopping"
        click_on "Submit"

        expect(page).to have_css '.checklists li', text: "Go shopping"
    end
end

