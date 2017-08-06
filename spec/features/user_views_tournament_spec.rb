require "rails_helper"

feature "user visits tournament" do
  scenario "unregistered from home page" do
    user = create(:user)
    tournament = create(:tournament)

    visit root_path(as: user)
    click_link tournament.name

    expect(page).to have_current_path(tournament_path(tournament))
  end
end
