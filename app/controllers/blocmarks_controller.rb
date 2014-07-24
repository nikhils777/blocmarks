class BlocmarksController < ApplicationController
  def index
    @topics = Topic.all
    @like = Like.new
  end
end
