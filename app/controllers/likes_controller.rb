class LikesController < ApplicationController


  def index
    @nickname = current_user.nickname
    @review = Review.find(params[:review_id])
    redirect_back(fallback_location: "/users/#{params[:id]}")
  end

  def create
    # @review = Review.find(params[:review_id])
    # @like = Like.create(user_id: current_user.id, review_id: @review.id)
    # @like_hash = {}
    # @like_hash[@review.id] = @review.id
    
    # respond_to do |format|
    #   format.html
    #   format.js
    # end
    
     @review = Review.find(params[:review_id])
     @like = Like.create(user_id: current_user.id, review_id: params[:review_id])
    #  @likes = Like.where(review_id: params[:review_id])
    #  @reviews = Review.all
    redirect_to controller: :likes, action: :index
    
  end


  def destroy
    
    # @review = Review.find(params[:review_id])
     @review = Review.find(params[:review_id])
     like = Like.find_by(user_id: current_user.id, review_id: params[:review_id])
     like.destroy
    # @like_hash = {}

    # respond_to do |format|
    #   format.html
    #   format.js
    # end
     
    #  @likes = Like.where(review_id: params[:review_id])
    #  @reviews = Review.all
    # redirect_to controller: :users, action: :index
  end
end
