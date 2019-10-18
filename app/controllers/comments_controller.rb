class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
  end

def create
  Comment.create( content:comment_params[:content] , user_id:current_user.id)
end

private
def comment_params
  params.permit(:content)
end

def destroy
  tweet = comment.find(params[:id])
  if comment.user_id == current_user.id
    comment.destroy
  end
end

end
