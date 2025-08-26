# app/controllers/products_controller.rb
class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]
  after_action :verify_authorized, except: %i[index show]
  after_action :verify_policy_scoped, only: :index

  def index
    @products = policy_scope(Product).all
  end

  def show; end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    authorize @product
    if @product.save
      redirect_to @product, notice: 'Product created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @product
  end

  def update
    authorize @product
    if @product.update(product_params)
      redirect_to @product, notice: 'Product updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @product
    @product.destroy
    redirect_to products_url, notice: 'Product deleted.'
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price_cents, :description, :stock, :image_url)
  end
end
