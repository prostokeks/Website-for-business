class CreateSalaries < ActiveRecord::Migration[7.0]
  def change
    create_table :salaries do |t|
      t.string :salary

      t.timestamps
    end
  end
end
