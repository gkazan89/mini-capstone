class AddIdToGuitars < ActiveRecord::Migration[5.2]
  def change
    add_column :guitars, :supplier_id, :integer
  end
end
