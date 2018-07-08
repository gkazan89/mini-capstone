class DeleteImageUrlFromGuitars < ActiveRecord::Migration[5.2]
  def change
    remove_column :guitars, :image_url, :string
  end
end
