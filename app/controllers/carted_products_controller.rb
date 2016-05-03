class CartedProductsController < ApplicationController

  def index

    @order = Order.find_by(user_id: current_user.id, completed: false)
    
    if @order
      @carted_products = CartedProduct.where("order_id = ?", @order.id)
    else
      redirect_to "/products"
    end
    
  end

  def create
    product = Product.find_by(id: params[:product_id])
    
    current_order = Order.find_by(user_id: current_user.id, completed: false)

    if current_order
      
    else
      current_order = Order.new(user_id: current_user.id)
      current_order.save
    end

    new_carted_product = CartedProduct.new(product_id: product.id, order_id: current_order.id, quantity: params[:quantity])
    new_carted_product.save

    redirect_to "/carted_products"
  end

  def destroy
    CartedProduct.find_by(id: params[:id]).destroy

    redirect_to "/carted_products"
  end
end