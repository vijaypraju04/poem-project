class CommentsController < ApplicationController
  before_action :require_logged_in

  def create
    # @comment = Comment.new(comment_params)
    # @comment.save
    user = current_user
    user.comments << Comment.new(comment_params)
    user.save

    redirect_to poem_path(user.comments.last.poem)


    # @poem = Poem.find(params[:poem_id])
    # @comment = @poem.comments.create(comment_params)
    # redirect_to poem_path(@poem)
  end

  def destroy
    poem = Poem.find(params[:poem_id])
    comment = poem.comments.find(params[:id])
    comment.destroy
    redirect_to poem_path(poem)
  end

  private

  def comment_params
    params.require(:comment).permit(:description, :poem_id, :user_id)
  end

end
