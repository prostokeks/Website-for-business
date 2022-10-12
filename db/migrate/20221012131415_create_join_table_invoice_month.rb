class CreateJoinTableInvoiceMonth < ActiveRecord::Migration[7.0]
  def change
    create_join_table :invoices, :months do |t|
      # t.index [:invoice_id, :month_id]
      # t.index [:month_id, :invoice_id]
    end
  end
end
