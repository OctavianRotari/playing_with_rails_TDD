require "rails_helper"

feature "User created todo" do
  scenario "successfully" do
    sign_in
    add_new_todo "Wash the car"
    expect(page).to display_todo "Wash the car"
  end
end
