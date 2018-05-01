class CommentsController < ApplicationController
  def create
    @art = Art.find(params[:art_id])
    authorize @art
    @comment = Comment.new(comment_params)
    @comment.art = @art
    if @comment.save
      redirect_to art_path(@art)
    else
      render 'arts/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
