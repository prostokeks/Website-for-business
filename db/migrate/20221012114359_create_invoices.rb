class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.integer :time
      t.integer :rate

      t.timestamps
    end
  end
end
