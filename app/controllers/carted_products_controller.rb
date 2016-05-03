class CartedProductsController < ApplicationController

  def index
    @order = Order.find_by(user_id: current_user.id, completed: false)
    @carted_products = CartedProduct.where("order_id = ?", @order.id)
  end

  def create
    product = Product.find_by(id: params[:product_id])
    
    if Order.find_by(user_id: current_user.id, completed: false)
      current_order = Order.find_by(completed: false)
    else
      current_order = Order.new(user_id: current_user.id)
      current_order.save
    end

    new_carted_product = CartedProduct.new(product_id: product.id, order_id: current_order.id, quantity: params[:quantity])
    new_carted_product.save

    redirect_to "/carted_products"
  end

  def update
    @order = Order.find_by(id: params[:id])
    @order.completed = true
    carted_products = CartedProduct.where("order_id = ?", @order.id)
    @order.subtotal = 0

    carted_products.each do |carted_product|
      @order.subtotal += (carted_product.product.price * carted_product.quantity)
    end

    @order.tax = ((@order.subtotal * 0.09).round(2))
    @order.total = (@order.subtotal + @order.tax)
    @order.save

    redirect_to "/orders/#{@order.id}"
  end
end