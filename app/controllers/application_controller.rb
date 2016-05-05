class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  before_action :calculate_cart_count


  def authenticate_admin!
    unless current_user && current_user.admin
      redirect_to "/"
    end
  end

  def authenticate_user!
    unless current_user
      redirect_to "/"
    end
  end

  def calculate_cart_count
    if current_user && current_user.orders.find_by(completed: false)
      if session[:cart_count]
        @cart_count = session[:cart_count]
      else
        @cart_count = current_user.orders.find_by(completed: false).carted_products.count
        session[:cart_count] = @cart_count
      end
    end
  end

end
