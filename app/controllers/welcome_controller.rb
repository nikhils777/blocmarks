class WelcomeController < ApplicationController
  def index
    @topics = current_user.topics

    @topics_hash = current_user.blocmarks.group_by{ |blocmark| blockmark.topic }
  end

  def about
  end
end
