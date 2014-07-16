class IncomingController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    puts "IIIINNNNNNNNCCCOOOOOOMMMMIIINNNNNGGGG!!! #{params}"

    sender = params[:sender]
    
    user = User.all.where(email: sender )
    if user.exists?
      logger.info "Got inside the if block"
      new_topic = Topic.create(title: params[:subject])
      Blocmark.create(topic_id: new_topic.id , user_id: user.first.id, url: params[:'body-plain'])
    else
      puts "EEEEERRRRROOOORRRROOOORRRR"
    end
  end
end