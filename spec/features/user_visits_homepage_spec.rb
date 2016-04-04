require "rails_helper"

feature "user visits home page" do 
  scenario "successfully" do
    sign_in
    expect(page).to have_css 'h1', text: 'Todos'
  end
end
