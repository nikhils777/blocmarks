class IncomingController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    puts "IIIINNNNNNNNCCCOOOOOOMMMMIIINNNNNGGGG!!! #{params}"

    sender = params["sender"]
    
    user = User.all.where(email: sender )
    if user
      new_topic = Topic.all.find_or_create_by(title: params["subject"])
      Blocmark.find_or_create_by(topic_id: new_topic.id , user_id: user.first.id, url: params["body-plain"])
    else
      puts "EEEEERRRRROOOORRRROOOORRRR"
    end
  end
end