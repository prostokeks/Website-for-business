class Office::InvoicesController < OfficeController
  def index
    @years = Year.all
    @year = Year.find(params[:id])
  end

  def new
  end

  def edit
  end
end
