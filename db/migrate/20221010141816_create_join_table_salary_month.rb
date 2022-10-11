class CreateJoinTableSalaryMonth < ActiveRecord::Migration[7.0]
  def change
    create_join_table :salaries, :months do |t|
      # t.index [:salary_id, :month_id]
      # t.index [:month_id, :salary_id]
    end
  end
end
