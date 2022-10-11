class Office::MonthsController < OfficeController

  def show
    @month=Month.find(params[:id])
  end

end
