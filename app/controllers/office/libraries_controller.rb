class Office::LibrariesController < OfficeController

  before_action :set_library, only: %i[show edit destroy]

  def index
    @libraries = Library.order(created_at: :desc)
  end

  def new
    @library = Library.new
  end

  def edit
  end

  def show
  end

  def destroy
    @library.destroy
    redirect_to office_libraries_path, status: :see_other
  end

  private

  def set_library
    @library = Library.find(params[:id])
  end
end
