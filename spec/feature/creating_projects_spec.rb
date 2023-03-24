require 'rails_helper'

RSpec.feature "Users can create a new project" do
  scenario "with valid attributes" do
    visit "/"

    click_link "Create Project"

    fill_in "Name", with: "Visual Studio"
    fill_in "Description", with: "Code Editing. Redefined"
    click_button "Create Project"

    expect(page).to have_content "Project has been created."
  end
end
