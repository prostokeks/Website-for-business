class LibrariesController < ApplicationController

  before_action :set_library, only: %i[show edit update]

  def index
    @search = Library.ransack(params[:q])
    @pagy, @libraries = pagy_countless(@search.result(distinct: true), items: 6)

    respond_to do |format|
      format.html # GET
      format.turbo_stream # POST
    end
  end

  def new
    @library = Library.new
  end

  def create
    @library = Library.new(library_params)
    if @library.save
      redirect_to library_path(@library), notice: "Library was successfully created."
    else
      render "office/libraries/new", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @library.update(library_params)
      redirect_to library_path(@library), notice: "Library was successfully updated."
    else
      render "office/libraries/edit", status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def set_library
    @library = Library.find(params[:id])
  end

  def library_params
    params.require(:library).permit(:title, :body, :avatar, flibrary_ids:[], user_ids:[])
  end
end
