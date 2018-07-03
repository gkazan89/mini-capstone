class ChangeDataToGuitars < ActiveRecord::Migration[5.2]
  def change
    change_column :guitars, :description, :text
    change_column :guitars, :price, :decimal, precision: 9, scale: 2
  end
end
