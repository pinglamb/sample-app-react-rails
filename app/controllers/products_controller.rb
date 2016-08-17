class ProductsController < ApplicationController
  before_action :set_product, only: %i(show edit update)

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product
    else
      render action: 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to @product
    else
      render action: 'edit'
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params[:product] ||= {}
    params[:product][:stock] ||= nil
    params.require(:product).permit(:stock)
  end
end
