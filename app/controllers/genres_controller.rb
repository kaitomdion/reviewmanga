class GenresController < ApplicationController

  def show
    @products = Product.where(genre_id: params[:id]).page(params[:page]).per(10)
    @product = Product.select("title","author","image_url","id")
  end
end
