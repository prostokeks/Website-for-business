class Career < ApplicationRecord

  WORK=["Full-time", "Part-time"]
  LOCATION=["Cherkasy", "Kyiv"]
  STATUS=[:active, :passive]

  validates :title, presence: true, length: {maximum: 100}
  validates :requirement, :benefit, presence: true, length: {maximum: 3000}
  validates :salary, presence: true, length: {maximum: 20}

end
