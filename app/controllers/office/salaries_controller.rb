class Office::SalariesController < OfficeController

  before_action :set_salary, only: %i[show edit update destroy]

  def index
    @salaries = Salary.all
    @users = User.all
  end

  def new
    @salary = Salary.new
  end

  def show
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
