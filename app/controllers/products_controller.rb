class ProductsController < ApplicationController
  def index 
    @products = Product.all
    @reviews = Review.order('created_at DESC').limit(10)
    product_ids = Review.group(:product_id).order('count_product_id DESC').limit(10).count(:product_id).keys
    @review = product_ids.map { |id| Product.find(id) }
    @parents = Genre.all.order("id ASC").limit(1)
  end

  def new
  end

  def create
      Product.create(product_params)
  end
  
  def show
    @product = Product.find(params[:id])
    @products = Review.where(product_id: @product.id).order(Arel.sql("RAND()")).limit(1)
  end
  
  
  def search
    @products = Product.search(params[:search])
  end

  private
    def product_params
      params.permit(:title, :image_url, :author, :genre_id)
    end
end
