class RenameImageIdColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :images, :product_id, :guitar_id
  end
end
