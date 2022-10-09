class SalariesController < ApplicationController


  #before_action :set_salary, only: update

  #def index
  # @internalps = Product.all
  #end

  #def show
  # @product = Product.find(params[:id])
  #end

  #def new
  # @internalp = Product.new
  #end

  def create
    @salary = Salary.new(salary_params)
    if @salary.save
      redirect_to office_salaries_path
    else
      render :new
    end
  end

  #def edit
  #end

  def update
    @salary = Salary.find(params[:id])
    if @salary.update salary_params
      redirect_to office_salaries_path
    else
      render :new
    end
  end

  private

  def salary_params
    params.require(:salary).permit(:year, :month, :salary, user_ids:[], year_ids:[], month_ids:[])
  end

  #def set_salary
  #end




end
