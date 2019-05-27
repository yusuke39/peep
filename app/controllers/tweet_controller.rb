class TweetController < ApplicationController

  def index
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end
  
  def tweet_params
    params.require(:tweet).permit(:comment).merge(user_id: current_user.id)
  end
end
