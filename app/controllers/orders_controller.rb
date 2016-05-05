class OrdersController < ApplicationController
   before_action :authenticate_user!

  def create
    product = Product.find_by(id: params[:product_id])
    subtotal = product.price * params[:quantity].to_i
    tax = (subtotal * 0.09).round(2)
    total = subtotal + tax

    new_order = Order.new(user_id: current_user.id, product_id: product.id, quantity: params[:quantity], subtotal: subtotal, tax: tax, total: total)
    new_order.save
    redirect_to "/orders/#{new_order.id}"
  end

  def show
    @order = current_user.orders.find_by(id: params[:id]) # Only current user can see their own orders
    @products = @order.products
    order_test = Order.new.subtotal
  end

  def update
    @order = Order.find_by(id: params[:id])
    @order.completed = true
    @order.carted_products
    @order.subtotal = 0

    @order.carted_products.each do |carted_product|
      @order.subtotal += (carted_product.product.price * carted_product.quantity)
    end

    @order.tax = ((@order.subtotal * 0.09).round(2))
    @order.total = (@order.subtotal + @order.tax)
    @order.save
    session[:cart_count] = nil

    redirect_to "/orders/#{@order.id}"
  end
end
