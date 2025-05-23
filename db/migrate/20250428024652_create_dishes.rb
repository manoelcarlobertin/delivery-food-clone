class CreateDishes < ActiveRecord::Migration[8.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :restaurant, null: false, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
