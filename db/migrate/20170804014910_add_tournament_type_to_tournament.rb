class AddTournamentTypeToTournament < ActiveRecord::Migration[5.0]
  def change
    add_column :tournaments, :tournament_type, :string, default: "trial"
    add_column :tournaments, :status, :string, default: "scheduled"
  end
end
