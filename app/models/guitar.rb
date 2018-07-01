class Guitar < ApplicationRecord
  def is_discounted
    true if price < 2
  end

  def tax
    price * 0.09
  end
end
