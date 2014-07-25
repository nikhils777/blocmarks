class LikesController < ApplicationController
  def new
  end
  def create
    @like = Like.create( user_id: params[:user_id] , blocmark_id: params[:blocmark_id] )
    if @like.save
      redirect_to root_path , notice: "like created!"
    else
      redirect_to root_path , notice: "Not saved!"
    end
  end
  def destroy
    @like = Like.find( params[:id] )
    if @like.destroy
      redirect_to root_path , notice: "like deleted!"
    else
      redirect_to root_path , notice: "error deleting"
    end
  end





end
