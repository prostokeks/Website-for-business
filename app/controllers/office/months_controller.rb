class Office::MonthsController < OfficeController

  def show
    @month = Month.find(params[:id])
    @year = Year.find(params[:year_id])
    @users = User.where.not(work_group: "User")
  end

end
