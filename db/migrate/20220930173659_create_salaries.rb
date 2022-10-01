class CreateSalaries < ActiveRecord::Migration[7.0]
  def change
    create_table :salaries do |t|
      t.string :year
      t.string :month
      t.integer :salary

      t.timestamps
    end
  end
end
