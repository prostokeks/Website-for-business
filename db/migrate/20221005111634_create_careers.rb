class CreateCareers < ActiveRecord::Migration[7.0]
  def change
    create_table :careers do |t|
      t.string :title
      t.string :requirement
      t.string :benefit
      t.string :salary
      t.string :work_load
      t.string :location
      t.string :status, default: "Opend", null: false

      t.timestamps
    end
  end
end
