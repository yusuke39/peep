class TweetController < ApplicationController

  def index
    @tweet = Tweet.new
    redirect_to new_user_session_path unless user_signed_in?
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      flash[:notice] = 'つぶやきました！！'
      redirect_to controller: 'peep', action: 'index'
    else
      render 'index'
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.user_id == current_user.id
      tweet.update(tweet_params)
      flash[:notice] = '編集完了！！'
      redirect_to root_path
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to root_path
  end


private
  
  def tweet_params
    params.require(:tweet).permit(:comment).merge(user_id: current_user.id)
  end
end
