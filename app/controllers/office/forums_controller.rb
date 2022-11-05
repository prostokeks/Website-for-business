class Office::ForumsController < OfficeController

  before_action :set_forum, only: %i[show edit update destroy]

  def index
    @forums = Forum.order(created_at: :desc)
  end

  def show
  end

  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(forum_params)
    if @forum.save
      redirect_to forums_path, notice: "Forum was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @forum.update(forum_params)
      redirect_to forum_path(@forum), notice: "Forum was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @forum.destroy
    redirect_to office_forums_path, status: :see_other, notice: "Forum was successfully destroyed."
  end

  private

  def set_forum
    @forum = Forum.find(params[:id])
  end

  def forum_params
    params.require(:forum).permit(:title, :body, :status, images:[])
  end

end
