# app/models/cart_item.rb
class CartItem < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :quantity, numericality: { only_integer: true, greater_than: 0 }

  def line_total_cents
    product.price_cents * quantity
  end
end
