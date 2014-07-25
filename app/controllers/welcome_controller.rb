class WelcomeController < ApplicationController
  def index
    @topics_hash = current_user.blocmarks.reverse.group_by{ |blocmark| blocmark.topic } if current_user

  end

  def about
  end
end
