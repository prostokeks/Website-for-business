class CreateJoinTableYearMonth < ActiveRecord::Migration[7.0]
  def change
    create_join_table :years, :months do |t|
      # t.index [:year_id, :month_id]
      # t.index [:month_id, :year_id]
    end
  end
end
