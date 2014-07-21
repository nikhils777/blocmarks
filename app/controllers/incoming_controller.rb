class IncomingController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    subject = params[:subject]
    user = User.where(email: params[:sender])
    if user.exists?
      new_topic = Topic.find_or_create_by( title: subject , user_id: user.first.id )
      Blocmark.find_or_create_by(topic_id: new_topic.id , user_id: user.first.id, url: params[:'body-plain'])
      head 200
    end
  end
end