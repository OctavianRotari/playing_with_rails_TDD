require "rails_helper"

feature "User created todo" do 
  scenario "successfully" do
    visit(root_path)
    click_on "Add new todo"
    fill_in "todo_title", with: "Doing a plan"
    click_on "Create Todo"
    expect(page).to have_css ".todos li", text: "Doing a plan"
  end
end
