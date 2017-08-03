class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.datetime :scheduled_at

      t.timestamps
    end
  end
end
