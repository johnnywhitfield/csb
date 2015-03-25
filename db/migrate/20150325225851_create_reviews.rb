class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :company, index: true
      t.references :user, index: true
      t.text :words
      t.integer :overall

      t.timestamps null: false
    end
    add_foreign_key :reviews, :companies
    add_foreign_key :reviews, :users
  end
end
