class Office::ProductsController < OfficeController

  before_action :set_product, only: %i[show edit update destroy]

  def index
    @internalps = Product.order(created_at: :desc)
  end

  def show
  end

  def new
    @internalp = Product.new
  end

  def edit
  end

  def destroy
   @internalp.destroy
   redirect_to office_products_path, status: :see_other
  end

  private

  def product_params
    params.require(:product).permit(:title, :content, :avatar, :status, :ptype, user_ids:[], images:[])
  end

  def set_product
    @internalp = Product.find(params[:id])
  end

end
