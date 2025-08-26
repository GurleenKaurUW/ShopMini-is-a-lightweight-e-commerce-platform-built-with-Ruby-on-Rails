# app/controllers/orders_controller.rb
class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.order(created_at: :desc)
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def create
    items = current_user.cart_items.includes(:product)
    if items.empty?
      return redirect_to cart_path, alert: 'Your cart is empty.'
    end

    total = items.sum(&:line_total_cents)
    order = current_user.orders.create!(total_cents: total, status: 'pending')
    items.each do |i|
      order.order_items.create!(product: i.product, quantity: i.quantity, price_cents: i.product.price_cents)
      i.product.decrement!(:stock, i.quantity)
    end
    current_user.cart_items.destroy_all
    redirect_to order_path(order), notice: 'Order placed.'
  end
end
