require "rails_helper"

feature "User completes a todo" do
  scenario "and marks it as complete" do
    sign_in
    add_new_todo "Buy milk"
    click_on "Mark as completed"
    click_on "Mark as incompleted"
    expect(page).not_to display_completed_todo "Buy milk"
    expect(page).to display_todo "Buy milk"
  end
end
