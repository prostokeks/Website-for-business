class Office::SalariesController < OfficeController

  before_action :set_salary, only: %i[edit destroy]

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
