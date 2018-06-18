class ProductsController < ApplicationController
  before_action :set_user, only: [:new, :create]

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(flat_params)
    @product.user = @user
    authorize @product

    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end
  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
    authorize @product
  end

  def destroy
     @product = Product.find(params[:id])
     authorize @product
     user = @product.user
     @product.destroy
     redirect_to root_path
  end

  def update
      @product = Product.find(params[:id])
      authorize @product
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :quantity, :category, :photo)
  end

  def set_user
   @user = current_user
  end

end
