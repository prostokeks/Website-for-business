class BlogsController < ApplicationController

  before_action :set_blog, only: %i[show update]

  def index
    @blogs = Blog.all
    @pagy, @blogs = pagy_countless(Blog.order(created_at: :desc), items: 6)

    respond_to do |format|
      format.html # GET
      format.turbo_stream # POST
    end
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blog_path(@blog), notice: "Blog was successfully created."
    else
      render "office/blogs/new", status: :unprocessable_entity
    end
  end

  def update
    if @blog.update(blog_params)
      redirect_to blog_path(@blog), notice: "Blog was successfully updated."
    else
      render "office/blogs/edit", status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :body, :avatar, images:[])
  end
end
