class AddFanCountToDishes < ActiveRecord::Migration[6.0]
  def change
    add_column :dishes, :fans_count, :integer
  end
end
