class Image < ApplicationRecord
  def guitars
    Guitar.where(product_id: id)
  end
end
