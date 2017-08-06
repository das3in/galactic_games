require "rails_helper"

feature "user registers for a tournament" do
  scenario "successfully from home page" do
    user = create(:user)
    tournament = create(:tournament)

    visit root_path(as: user)
    click_link "Register"

    expect(page).to have_current_path(tournament_register_path(tournament))
  end

  scenario "successfully from home page" do
    user = create(:user)
    tournament = create(:tournament)

    visit tournament_path(tournament, as: user)
    click_link "Register"

    expect(page).to have_current_path(tournament_register_path(tournament))
  end
end
