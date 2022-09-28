class AddStatusToForum < ActiveRecord::Migration[7.0]
  def change
    add_column :forums, :status, :string
  end
end
