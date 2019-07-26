class ProductsController < ApplicationController
  def index 
    @products = Product.all
    @reviews = Review.order('created_at DESC').limit(10)
    product_ids = Review.group(:product_id).order('count_product_id DESC').limit(10).count(:product_id).keys
    @review = product_ids.map { |id| Product.find(id) }
  end

  def new
  end

  def create
      Product.create(product_params)
  end
  
  def show
    @products = Product.where(genre_id: params[:id]).page(params[:page]).per(10)
    @product = Product.select("title","author","image_url","id")
  end
  
  
  def search
    @products = Product.search(params[:search])
  end

  private
    def product_params
      params.permit(:title, :image_url, :author, :genre_id)
    end
end
