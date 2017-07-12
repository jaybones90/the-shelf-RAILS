class OrderItemsController < ApplicationController
    before_action :authenticate_user!, only: [:create]
  def create
    @order = current_order
    @order.account_id = current_user.account.id
    @item = @order.order_items.new(order_item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to products_path
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    redirect_to cart_path
  end

  def update
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.quantity = params[:order_item][:quantity].to_i
    if @item.quantity == 0
      @item.destroy
      @order.save
      redirect_to cart_path
    else
      @item.save
      redirect_to cart_path
    end
  end



private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
