class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show, :search]

  def index
    @categories = Category.all
    sort_by = params[:sort_by]
    category = params[:category]

    if sort_by == "price"
      @products = Product.order(sort_by => params[:sort_order])
    elsif sort_by == "discount"
      @products = Product.where("price < ?", Product.get_discount_threshold)
    elsif category
      @products = Category.find_by(name: params[:category]).products
    else
      @products = Product.all
    end
  end

  def show
    if params[:id] == "random"
      @product = Product.order("RANDOM()").first
      @images = @product.images
    else
      @product = Product.find_by(id: params[:id])
      @images = @product.images
    end
  end

  def new
    @product = Product.new
    @image = Image.new
  end

  def create
      @product = Product.new(name: params[:name], price: params[:price], in_stock: params[:in_stock], description: params[:description], supplier_id: params[:supplier][:supplier_id])  
    if @product.save
      @image = Image.new(link: params[:link], product_id: @product.id)
      @image.save
      flash[:success] = "Product added!"
      redirect_to "/products/#{@product.id}"
    else
      render :new
    end
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.update(name: params[:name], price: params[:price], in_stock: params[:in_stock], description: params[:description], supplier_id: params[:supplier][:supplier_id])
    @product.images.first.update(link: params[:link])
    flash[:success] = "Product updated!"
    redirect_to "/products/#{@product.id}"
    # Another method
    # @product.assign_attributes(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    # @product.save
    # Another another method
    # @product.name = params[:name]
    # @product.price = params[:price]
    # @product.image = params[:image]
    # @product.description = params[:description]
    # @product.save
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:danger] = "Product deleted."
    redirect_to "/products"
  end

  def search
    search_term = params[:search]
    @products = Product.where("name LIKE ?", "%#{search_term}%")
    render :index
  end
end








