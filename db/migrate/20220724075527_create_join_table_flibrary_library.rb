class CreateJoinTableFlibraryLibrary < ActiveRecord::Migration[7.0]
  def change
    create_join_table :flibraries, :libraries do |t|
      # t.index [:flibrary_id, :library_id]
      # t.index [:library_id, :flibrary_id]
    end
  end
end
