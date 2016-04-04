require "rails_helper"

feature "User completes a todo" do 
  scenario "and marks it as complete" do
    sign_in
    click_on "Add new todo"
    fill_in "todo_title", with: "Doing a plan"
    click_on "Create Todo"
    click_on "Mark as completed"
    expect(page).to have_css ".todos li.completed", text: "Doing a plan"
  end
end
