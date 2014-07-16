class IncomingController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    subject = params[:subject]
    
    user = User.where(email: sender)
    if user.exists?
      new_topic = Topic.create(:title => subject)
      Blocmark.create(topic_id: new_topic.id , user_id: user.first.id, url: params[:'body-plain'])
      head 200
    end
  end
end