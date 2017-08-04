class AddRatingToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :rating, :string, default: 1000
  end
end
