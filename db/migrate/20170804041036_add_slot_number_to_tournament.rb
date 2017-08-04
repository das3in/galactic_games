class AddSlotNumberToTournament < ActiveRecord::Migration[5.0]
  def change
    add_column :tournaments, :player_slots, :integer, default: 8
  end
end
