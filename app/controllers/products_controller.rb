class ProductsController < ApplicationController

  before_action :set_product, only: %i[edit update destroy]

  def index
    @internalps = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @internalp = Product.new
  end

  def create
    @internalp = Product.new(product_params)
    if @internalp.save
      redirect_to office_products_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @internalp.update product_params
      redirect_to office_products_path
    else
      render :new
    end
  end

  def internal
    @products = Product.where(ptype: "internal")
  end

  def outsourcing
    @products = Product.where(ptype: "outsourcing")
  end

  private

  def product_params
    params.require(:product).permit(:title, :content, :avatar, :status, :ptype, user_ids:[], images:[])
  end

  def set_product
    @internalp = Product.find(params[:id])
  end

end
