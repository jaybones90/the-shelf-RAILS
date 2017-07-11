class CartsController < ApplicationController

  def show
    @amount = current_order.calculate_total
    @order_items = current_order.order_items
    respond_to do |format|
      format.html
      format.js
    end
  end
end
