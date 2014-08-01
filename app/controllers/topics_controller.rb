class TopicsController < ApplicationController
  def show
    @topic = Topic.find(params[:id])
    @blocmarks = @topic.blocmarks
    authorize @topic
  end
end
