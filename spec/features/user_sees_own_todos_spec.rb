require "rails_helper"

feature "User sees own todos" do
  scenario "doesn't see others' todos" do
    Todo.create!(title: "Wash the car", email: "test@test.com")
    sign_in_as("someone@example.com")
    expect(page).not_to display_todo "Wash the car"
  end
end
