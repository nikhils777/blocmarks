class BlocmarksController < ApplicationController
  def index
    @topics = Blocmark.all.reverse.group_by{ |blocmark| blocmark.topic }
    @like = Like.new
  end
  def destroy
    @blocmark = Blocmark.find(params[:id])
    authorize @blocmark
    if @blocmark.destroy
      redirect_to root_path , notice: "Blocmark deleted!"
    else
      redirect_to root_path , notice: "Error deleting Blocmark"
    end
  end
end
