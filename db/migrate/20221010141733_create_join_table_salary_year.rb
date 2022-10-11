class CreateJoinTableSalaryYear < ActiveRecord::Migration[7.0]
  def change
    create_join_table :salaries, :years do |t|
      # t.index [:salary_id, :year_id]
      # t.index [:year_id, :salary_id]
    end
  end
end
