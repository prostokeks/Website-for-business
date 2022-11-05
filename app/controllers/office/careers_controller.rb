class Office::CareersController < OfficeController

  before_action :set_career, only: %i[show edit destroy]

  def index
    @careers = Career.order(created_at: :desc)
  end

  def show
  end

  def new
    @career = Career.new
  end

  def edit
  end

  def destroy
    @career.destroy
    redirect_to office_careers_path, status: :see_other, notice: "Career was successfully destroyed."
  end

  private

  def career_params
    params.require(:career).permit(:title, :requirement, :benefit, :salary, :work_load, :location, :status)
  end

  def set_career
    @career = Career.find(params[:id])
  end
end
