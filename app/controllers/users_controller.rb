class UsersController < ApplicationController

  def index 
    @nickname = current_user.nickname
   end
  
  
    def show 
      @users = User.find(params[:id])
      @review = Review.where(user_id: params[:id]).page(params[:page]).per(4).order("created_at DESC")
      @reviews = Review.all
    end

    
end
