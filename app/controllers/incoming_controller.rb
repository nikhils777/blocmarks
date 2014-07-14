class IncomingController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    puts "INCOMING PARAMS HERE: #{params}"
    topic = params[subject]
    user = params[sender]
    text = params[body-plain]
    User.all.where(email: user )
    x = Topic.new(user_id: User.all.where(email: user )).save
    Blocmark.new(topic_id: x.id , user_id: User.all.where(email: user )).save
  end
end