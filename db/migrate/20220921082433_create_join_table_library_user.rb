class CreateJoinTableLibraryUser < ActiveRecord::Migration[7.0]
  def change
    create_join_table :libraries, :users do |t|
      # t.index [:library_id, :user_id]
      # t.index [:user_id, :library_id]
    end
  end
end
