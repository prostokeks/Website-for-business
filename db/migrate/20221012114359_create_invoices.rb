class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.integer :invoice

      t.timestamps
    end
  end
end
