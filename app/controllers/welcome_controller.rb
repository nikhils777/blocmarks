class WelcomeController < ApplicationController
  def index
    @topics = current_user.topics
    @blocmarks = @topics.blocmarks
  end

  def about
  end
end
