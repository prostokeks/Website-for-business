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
  end

  def new
  end

  def edit
  end
end
