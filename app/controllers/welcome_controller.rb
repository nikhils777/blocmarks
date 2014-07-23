class WelcomeController < ApplicationController
  def index

    @topics_hash = current_user.blocmarks.group_by{ |blocmark| blocmark.topic }
  end

  def about
  end
end
