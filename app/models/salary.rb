class Salary < ApplicationRecord
  has_and_belongs_to_many :users

  YEAR=["2021", "2022", "2023", "2024", "2025"]
  MONTH=["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

end
