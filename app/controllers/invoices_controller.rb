class InvoicesController < ApplicationController

  def create
    @invoice = Invoice.new(invoice_params)
    if @invoice.save
      redirect_to root_path
    else
      render "office/invoices/new"
    end
  end

  def update
    @invoice = Invoice.find(params[:id])
    if @invoice.update(invoice_params)
      redirect_to root_path
    else
      render "office/invoices/edit"
    end
  end

  private

  def invoice_params
    params.require(:invoice).permit(:time, :rate, month_ids:[], year_ids:[], user_ids:[], product_ids:[])
  end

end