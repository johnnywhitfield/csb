class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.references :review, index: true
      t.references :company, index: true
      t.string :name
      t.string :description

      t.timestamps null: false
    end
    add_foreign_key :categories, :reviews
    add_foreign_key :categories, :companies
  end
end
