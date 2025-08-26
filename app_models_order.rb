# app/models/order.rb
class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy

  enum status: { pending: 'pending', paid: 'paid', cancelled: 'cancelled' }

  def total_cents
    order_items.sum(&:price_cents)
  end
end
