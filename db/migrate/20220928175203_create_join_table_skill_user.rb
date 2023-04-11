class CreateJoinTableSkillUser < ActiveRecord::Migration[7.0]
  def change
    create_join_table :skills, :users do |t|
      # t.index [:skill_id, :user_id]
      # t.index [:user_id, :skill_id]
    end
  end
end
