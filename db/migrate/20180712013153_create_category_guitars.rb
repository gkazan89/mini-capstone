class CreateCategoryGuitars < ActiveRecord::Migration[5.2]
  def change
    create_table :category_guitars do |t|
      t.integer :guitar_id
      t.integer :category_id

      t.timestamps
    end
  end
end
