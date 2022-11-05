class Office::SalariesController < OfficeController

  def year
    @years = Year.all
    @year = Year.find(params[:id])
    @months = Month.all
    @users = User.where.not(work_group: "User")
    @salaries = Salary.all
  end

  def month
    @month = Month.find(params[:id])
    @year = Year.find(params[:year_id])
    @users = User.where.not(work_group: "User")
    @salaries = Salary.all
  end

  def project
    @user = User.find(params[:id])
    @months = Month.all
    @year = Year.find(params[:year_id])
  end

  def new
    @salary = Salary.new
  end

end
