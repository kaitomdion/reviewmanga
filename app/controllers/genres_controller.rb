class GenresController < ApplicationController

  def show
    @genre= Genre.find(params[:id])
    genreIds = get_genre(@genre)
    @products = Product.where(genre_id: genreIds).page(params[:page]).per(10)
    @product = Product.select("title","author","image_url","id")
  end

  private
  def get_genre(genre)
    if genre.indirect_ids.present?
      genreIds = genre.indirect_ids
    elsif genre.children.present?
      genreIds = genre.children
    else
      genreIds = genre
    end
    return genreIds
  end
end


