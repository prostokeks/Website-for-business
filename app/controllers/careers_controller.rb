class CareersController < ApplicationController

  before_action :set_career, only: %i[update destroy]

  def index
    @careers = Career.all
  end

  def create
    @career = Career.new(career_params)
    if @career.save
      redirect_to office_careers_path
    else
      render "office/careers/new"
    end
  end

  def update
    if @career.update(career_params)
      redirect_to office_careers_path
    else
      render "office/careers/edit"
    end
  end

  def destroy
    @career.destroy
    redirect_to office_cereers_path, status: :see_other
  end

  private

  def career_params
    params.require(:career).permit(:title, :requirement, :benefit, :salary, :work_load, :location, :status)
  end

  def set_career
    @career = Career.find(params[:id])
  end

end
