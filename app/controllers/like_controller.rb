class LikeController < ApplicationController

  def create
    @like = current_user.likes.create(tweet_id: params[:id])
    redirect_to root_path
  end

  def destroy
    @like = Like.find_by(tweet_id: params[:id], user_id: current_user.id)
    @like.destroy
    redirect_to root_path
  end

end
