class IncomingController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def create
    puts "IIIINNNNNNNNCCCOOOOOOMMMMIIINNNNNGGGG!!! #{params}"

    sender = params["sender"].to_s
    
    user = User.all.where(email: sender )
    if user
      new_topic = Topic.create(title: params["subject"].to_s)
      Blocmark.create(topic_id: new_topic.id , user_id: user.first.id, url: params["body-plain"].to_s)
    else
      puts "EEEEERRRRROOOORRRROOOORRRR"
    end
  end
end