class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
    respond_to do |format|
      format.html
      format.js
    end
  end
end
