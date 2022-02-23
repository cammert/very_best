class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :dish
      t.integer :venue_id
      t.string :dish_type

      t.timestamps
    end
  end
end
