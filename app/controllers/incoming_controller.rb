class IncomingController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    subject_array = params[:subject].split(" ")
    user = User.where(email: params[:sender])
    if user.exists?
      subject_array.each do |subject|
      new_topic = Topic.find_or_create_by( title: subject )
      Blocmark.find_or_create_by(topic_id: new_topic.id , user_id: user.first.id, url: params[:'body-plain'])
      end      
      head 200
    end
  end
end