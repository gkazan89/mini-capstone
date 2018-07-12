class Category < ApplicationRecord
  has_many :category_guitars
  has_many :guitars , through: :category_guitars
end
