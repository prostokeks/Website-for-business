class CommentsController < ApplicationController

  before_action :set_forum
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @comments = @forum.comments
  end

  def edit
  end

  def new
    @comment = @forum.comments.build
  end

  def create
    @comment = @forum.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to forum_path(@forum)
    else
      render :new
    end
  end

  def update
    if @comment.update(comment_params)
      redirect_to root_path
    else
      render forums_path
    end
  end

  def destroy
    @comment.destroy
    redirect_to forum_path(@forum)
  end

  private

  def set_forum
    @forum = Forum.find(params[:forum_id])
  end

  def set_comment
    @comment = @forum.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :forum_id)
  end
end
