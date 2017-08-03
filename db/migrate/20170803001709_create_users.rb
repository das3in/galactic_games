class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, unique: true
      t.string :username
      t.string :provider, default: "discord"
      t.string :discord_id, unique: true
      t.string :discord_avatar
      t.string :discord_discriminator
      t.string :token

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
