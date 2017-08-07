class AddActivePlayerToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :active_player_id, :integer
  end
end
