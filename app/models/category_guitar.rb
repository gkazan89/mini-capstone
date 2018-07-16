class CategoryGuitar < ApplicationRecord
  belongs_to :category
  belongs_to :guitar
end
