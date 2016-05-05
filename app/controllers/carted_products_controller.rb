class CartedProductsController < ApplicationController
  before_action :authenticate_user!

  def index

    @order = Order.find_by(user_id: current_user.id, completed: false)
    
    if @order
      @carted_products = CartedProduct.where("order_id = ?", @order.id)
    else
      redirect_to "/products"
    end
    
  end

  def create

     # order = current_user.orders.find_by(completed: false) || Order.create(completed:false, user_id: current_user.id) # Instructor's code; crazy condensed!!! 

    if !params[:quantity].empty?
      product = Product.find_by(id: params[:product_id])
      
      current_order = Order.find_by(user_id: current_user.id, completed: false)

      if !current_order
        current_order = Order.new(user_id: current_user.id)
        current_order.save
      end

      new_carted_product = CartedProduct.new(product_id: product.id, order_id: current_order.id, quantity: params[:quantity])
      new_carted_product.save
      session[:cart_count] = nil

      redirect_to "/carted_products"
    else
      redirect_to "/products/#{params[:product_id]}"
    end
  end

  def destroy
    CartedProduct.find_by(id: params[:id]).destroy
    session[:cart_count] = nil
    
    redirect_to "/carted_products"
  end
end