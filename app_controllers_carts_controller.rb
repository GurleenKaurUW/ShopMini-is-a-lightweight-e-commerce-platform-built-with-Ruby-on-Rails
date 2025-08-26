# app/controllers/carts_controller.rb
class CartsController < ApplicationController
  def show
    @items = current_user.cart_items.includes(:product)
    @subtotal_cents = @items.sum(&:line_total_cents)
  end
end
