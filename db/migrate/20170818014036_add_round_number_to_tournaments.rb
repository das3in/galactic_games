class AddRoundNumberToTournaments < ActiveRecord::Migration[5.0]
  def change
    add_column :tournaments, :round_number, :integer, default: 1
  end
end
