require "rails_helper"

feature "user views tournament" do
  scenario "unregistered user - registering tournament" do
    user = create(:user)
    tournament = create(:tournament)

    visit root_path(as: user)
    click_link tournament.name

    expect(page).to have_current_path(tournament_path(tournament))
    expect(page).to have_content "Slots available"
  end

  scenario "unregistered user - active tournament" do
    user = create(:user)
    tournament = create(:tournament, status: "in_progress")

    visit root_path(as: user)
    click_link tournament.name

    expect(page).to have_current_path(tournament_path(tournament))
    expect(page).to have_content "Pairings / Results"
  end

  scenario "registered user - active tournament" do
    user = create(:user)
    tournament = create(:tournament)
    tournament.players.create(user_id: user.id)

    visit root_path(as: user)
    click_link tournament.name

    expect(page).to have_current_path(tournament_path(tournament))
    expect(tournament.players.first.user).to eq(user)
  end
end
