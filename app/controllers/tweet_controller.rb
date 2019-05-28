class TweetController < ApplicationController

  def index
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      @tweets = Tweet.all
      redirect_to controller: 'peep', action: 'index'
    else
      render 'index'
    end
  end

private
  
  def tweet_params
    params.require(:tweet).permit(:comment).merge(user_id: current_user.id)
  end
end
