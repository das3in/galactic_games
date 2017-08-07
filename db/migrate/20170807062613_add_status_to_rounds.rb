class AddStatusToRounds < ActiveRecord::Migration[5.0]
  def change
    add_column :rounds, :status, :string, default: "in_progress"
  end
end
