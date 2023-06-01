class AddReviewToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :review, :text
  end
end
