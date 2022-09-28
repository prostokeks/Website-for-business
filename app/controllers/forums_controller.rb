class ForumsController < ApplicationController

  before_action :set_forum, only: %i[show edit update destroy]

  def index
    @search = Forum.where(status: "active").ransack(params[:q])
    @pagy, @forums = pagy_countless(@search.result(distinct: true), items: 6)

    respond_to do |format|
      format.html # GET
      format.turbo_stream # POST
    end
  end

  def show
  end

  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(forum_params)
    if @forum.save
      redirect_to forums_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @forum.update(forum_params)
      redirect_to forum_path(@forum)
    else
      render :edit
    end
  end

  def destroy
    @forum.destroy
    redirect_to office_forums_path, status: :see_other
  end

  private

  def set_forum
    @forum = Forum.find(params[:id])
  end

  def forum_params
    params.require(:forum).permit(:title, :body, :status, :avatar, images:[], fforum_ids:[])
  end

end
