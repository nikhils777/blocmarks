class IncomingController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    user = User.where(email: params[sender] )
    if user.length == 1
        new_topic = Topic.find_or_create_by(title: params[subject])
        Blocmark.find_or_create_by(topic_id: new_topic.id , user_id: user.first.id, url: params[body-plain])
    else
        # Handle error log here?
    end
  end
end