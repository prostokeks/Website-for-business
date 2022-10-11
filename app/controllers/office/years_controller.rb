class Office::YearsController < OfficeController

  def show
    @years = Year.all
    @year = Year.find(params[:id])
    @months = Month.all
    @users = User.where.not(work_group: "User")
    #@usersfd = User.where(role: "Front-end Developer")
  end

end
