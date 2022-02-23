class AddDishReferenceToLikes < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :likes, :dishes
    add_index :likes, :dish_id
  end
end
