class CreateMonths < ActiveRecord::Migration[7.0]
  def change
    create_table :months do |t|
      t.string :month

      t.timestamps
    end
  end
end
