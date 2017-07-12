class ProductsController < ApplicationController

  def index
    @products = Product.all
    respond_to do |format|
      format.html
      format.js 
    end
  end

  def show
    @product = Product.find(params[:id])
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "New product added!"
      respond_to do |format|
        format.html
        format.js { redirect_to products_path }
      end
    else
      flash[:alert] = "please try again."
      render :new
    end
  end



  private

  def product_params
    params.require(:product).permit(:name, :price, :category, :description, :avatar)
  end


end
