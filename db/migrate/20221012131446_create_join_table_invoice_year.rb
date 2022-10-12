class CreateJoinTableInvoiceYear < ActiveRecord::Migration[7.0]
  def change
    create_join_table :invoices, :years do |t|
      # t.index [:invoice_id, :year_id]
      # t.index [:year_id, :invoice_id]
    end
  end
end
