class Office::SalariesController < OfficeController

  before_action :set_salary, only: %i[edit destroy]

  def year
    @years = Year.all
    @year = Year.find(params[:id])
    @months = Month.all
    @users = User.where.not(work_group: "User")
  end

  def month
    @month = Month.find(params[:id])
    @year = Year.find(params[:year_id])
    @users = User.where.not(work_group: "User")
  end

  def project
    @user = User.find(params[:id])
    @months = Month.all
    @year = Year.find(params[:year_id])
  end

  def new
    @salary = Salary.new
  end

  def edit
  end

  def destroy
  end

  private

  def set_salary
    @salary = Salary.find(params[:id])
  end

end
