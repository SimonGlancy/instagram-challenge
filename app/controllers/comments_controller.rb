class CommentsController < ApplicationController

  def new
    @moment = Moment.find(params[:moment_id])
    @comment = Comment.new
  end

  def create
    @moment = Moment.find(params[:moment_id])
    @moment.comments.create(comment_params)
    redirect_to "/moments/#{@moment.id}"
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end

end