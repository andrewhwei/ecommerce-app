class OrdersController < ApplicationController

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
    @order = Order.find_by(id: params[:id])
  end

end
