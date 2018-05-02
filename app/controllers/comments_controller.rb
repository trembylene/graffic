class CommentsController < ApplicationController
  def create
    @art = Art.find(params[:art_id])
    authorize @art
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.art = @art
    if @comment.save
      respond_to do |format|
        format.html { redirect_to art_path(@art) }
        format.js  # <-- will render `app/views/comments/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'arts/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
