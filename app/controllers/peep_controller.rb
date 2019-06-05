class PeepController < ApplicationController

  def index
    @tweet = Tweet.new
    @tweets = Tweet.order('id DESC')
  end
  
end
