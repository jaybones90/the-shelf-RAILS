class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order, :is_admin?

  def is_admin?
    current_user && (current_user.admin == true)
  end

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new
    end
  end
end
