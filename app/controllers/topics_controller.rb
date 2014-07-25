class TopicsController < ApplicationController
  def show
    @topic = Topic.find(params[:id])
    @blocmarks = @topic.blocmarks
  end
end
