class CreateJoinTableSalaryUser < ActiveRecord::Migration[7.0]
  def change
    create_join_table :salaries, :users do |t|
      # t.index [:salary_id, :user_id]
      # t.index [:user_id, :salary_id]
    end
  end
end
