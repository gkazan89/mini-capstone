class Supplier < ApplicationRecord
  def guitars
    Guitar.where(supplier_id: id)
  end
end
