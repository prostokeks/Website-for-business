class AddPtypeToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :ptype, :string
  end
end
