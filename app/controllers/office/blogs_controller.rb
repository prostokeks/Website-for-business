class Office::BlogsController < OfficeController

  before_action :set_blog, only: %i[show edit destroy]

  def index
    @blogs = Blog.order(created_at: :desc)
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def show
  end

  def destroy
    @blog.destroy
    redirect_to office_blogs_path, status: :see_other, notice: "Blog was successfully destroyed."
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

end
