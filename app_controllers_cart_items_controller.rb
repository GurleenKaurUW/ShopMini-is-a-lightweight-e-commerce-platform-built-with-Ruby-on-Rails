# app/controllers/cart_items_controller.rb
class CartItemsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    item = current_user.cart_items.find_or_initialize_by(product: product)
    item.quantity = (item.quantity || 0) + (params[:quantity] || 1).to_i
    if item.save
      redirect_to cart_path, notice: 'Added to cart.'
    else
      redirect_to product, alert: 'Could not add to cart.'
    end
  end

  def update
    item = current_user.cart_items.find(params[:id])
    if item.update(quantity: params[:quantity].to_i)
      redirect_to cart_path, notice: 'Cart updated.'
    else
      redirect_to cart_path, alert: 'Update failed.'
    end
  end

  def destroy
    item = current_user.cart_items.find(params[:id])
    item.destroy
    redirect_to cart_path, notice: 'Removed from cart.'
  end
end
