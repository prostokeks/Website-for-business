class CreateJoinTableForumFforum < ActiveRecord::Migration[7.0]
  def change
    create_join_table :forums, :fforums do |t|
      # t.index [:forum_id, :fforum_id]
      # t.index [:fforum_id, :forum_id]
    end
  end
end
