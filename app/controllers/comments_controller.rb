class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
  end

def create
  Comment.create( content:comment_params[:content])
end

private
def comment_params
  params.permit(:content)
end

end
