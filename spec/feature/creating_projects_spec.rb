require "rails_helper"

RSpec.feature "Users can create a new project" do
  scenario "with valid attributes" do
    visit "/"

    click_link "Create Project"

    fill_in "Name", with: "Visual Studio"
    fill_in "Description", with: "Code Editing. Redefined"
    click_button "Create Project"

    expect(page).to have_content "Project has been created."

    project = Project.find_by!(name: "Visual Studio")
    expect(page.current_url).to eq project_url(project)

    title = "Visual Studio Code - Projects - Ticketee"
    expect(page).to have_title title
  end
end
