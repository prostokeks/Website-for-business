class Career < ApplicationRecord

  WORK=["Full-time", "Part-time"]
  LOCATION=["Cherkasy", "Kyiv"]
  STATUS=[:active, :passive]

  validates :title, :requirement, :salary, presence: true
  validates :title, length: {maximum: 100}
  validates :requirement, :benefit, length: {maximum: 3000}
  validates :salary, length: {maximum: 20}

end
