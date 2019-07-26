class LikesController < ApplicationController

  
  def index
    @nickname = current_user.nickname
  end

  def create
    @like = Like.create(user_id: current_user.id, review_id: params[:review_id])
    @likes = Like.where(review_id: params[:review_id])
    @reviews = Review.all
    redirect_to controller: :likes, action: :index
  end


  def destroy
    @like = Like.find_by(user_id: current_user.id, review_id: params[:review_id])
    @like.destroy
    @likes = Like.where(review_id: params[:review_id])
    @reviews = Review.all
    redirect_to controller: :users, action: :index
  end
end
