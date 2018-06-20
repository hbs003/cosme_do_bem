class OrdersController < ApplicationController

  def index
    @orders = current_user.orders
  end

  def new
    @order = Order.new
  end

  def create
    product = Product.find(params[:product_id])
    order = Order.create!(product_sku: product.sku, amount: product.price, state: 'pending', user: current_user)
    if order.save
      redirect_to new_order_payment_path(order)
    else
      render "products/show"
    end

  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:value, :date, :status, :shipping_address)
  end

end


def show
  @order = current_user.orders.where(state: 'paid').find(params[:id])
end
