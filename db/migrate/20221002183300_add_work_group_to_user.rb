class AddWorkGroupToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :work_group, :string, default: "User", null: false
  end
end
