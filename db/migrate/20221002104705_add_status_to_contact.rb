class AddStatusToContact < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :status, :string, default: "Opend", null: false
  end
end
