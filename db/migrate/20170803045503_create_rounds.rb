class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.integer :seat_1, foreign_key: true
      t.integer :seat_2, foreign_key: true
      t.integer :round_number
      t.integer :seat_1_score, default: 0
      t.integer :seat_2_score, default: 0
      t.integer :winner, foreign_key: true
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
