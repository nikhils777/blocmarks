class WelcomeController < ApplicationController
  def index
    @blocmarks = Blocmark.where(user: current_user).group_by {|blocmark| blocmark.topic.title }
    puts "***** #{@blocmarks.to_yaml}"

  end

  def about
  end
end
