class BlocmarksController < ApplicationController
  def index
    @topics = Topic.all.reverse
    @like = Like.new
  end
  def destroy
    @blocmark = Blocmark.find(params[:id])
    if @blocmark.destroy
      redirect_to root_path , notice: "Blocmark deleted!"
    else
      redirect_to root_path , notice: "Error deleting Blocmark"
    end
  end
end
