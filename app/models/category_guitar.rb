class CategoryGuitar < ApplicationRecord
  belongs_to :guitar
  belongs_to :product
end
