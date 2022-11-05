class SalariesController < ApplicationController

  def create
    @salary = Salary.new(salary_params)
    if @salary.save
      redirect_to office_salaries_year_path(1), notice: "Salary was successfully created."
    else
      render "office/salaries/new"
    end
  end

  def update
    @salary = Salary.find(params[:id])
    if @salary.update(salary_params)
      redirect_to office_salaries_year_path(1), notice: "Salary was successfully updated."
    else
      render "office/salaries/edit"
    end
  end

  private

  def salary_params
    params.require(:salary).permit(:salary, month_ids:[], user_ids:[], year_ids:[])
  end

end
