class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

  end

  def show
    @product = Product.find(params[:id])

  end

  def edit
    @product = Product.find(params[:id])

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

  def update
    @product = Product.find.(params[:id])
    @product.save

  end

  private

  def product_params
    params.require(:flat).permit(:name, :address, :description, :price, :max_guests, :photo)
  end


end
end
