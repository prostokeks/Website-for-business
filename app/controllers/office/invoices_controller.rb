class Office::InvoicesController < OfficeController

  def year
    @years = Year.all
    @year = Year.find(params[:id])
    @months = Month.all
    @products = Product.all
  end

  def month
    @month = Month.find(params[:id])
    @year = Year.find(params[:year_id])
    @products = Product.all
  end

  def project
    @month = Month.find(params[:month_id])
    @year = Year.find(params[:year_id])
    @product = Product.find(params[:id])
    @users = User.all
    #@users = User.product_ids == [@product.id]
    #@users = User.where.not(work_group: "User")
  end

  def new
  end

  def edit
  end
end
