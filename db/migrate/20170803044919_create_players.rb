class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.references :user, foreign_key: true
      t.references :tournament, foreign_key: true
      t.integer :wins, default: 0
      t.integer :losses, default: 0
      t.integer :points, default: 0
      t.string :status, default: "registered"

      t.timestamps
    end
  end
end
