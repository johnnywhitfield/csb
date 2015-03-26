class AddRatingToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :rating, :integer
  end
end
