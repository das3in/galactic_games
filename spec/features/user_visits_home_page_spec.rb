require "rails_helper"

feature "user visits home page" do
  scenario "guest user visits home page" do
    visit root_path

    expect(page).to have_current_path(root_path)
  end
end
