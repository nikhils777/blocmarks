class LikesController < ApplicationController
  def new
  end
  def create
    @like = Like.create( like_params )
    @like.user = current_user
    authorize @like
    if @like.save
      redirect_to blocmarks_path , notice: "like created!"
    else
      redirect_to blocmarks_path , notice: "Like not created! Try again!"
    end
  end
  def destroy
    @like = Like.find( params[:id] )
    authorize @like
    if @like.destroy
      redirect_to blocmarks_path , notice: "like deleted!"
    else
      redirect_to blocmarks_path , notice: "error deleting"
    end
  end

  private

  def like_params
    params.permit(:blocmark_id , :user_id)
  end





end
