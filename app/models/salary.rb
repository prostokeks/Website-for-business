class Salary < ApplicationRecord

  has_and_belongs_to_many :users
  has_and_belongs_to_many :months
  has_and_belongs_to_many :years

  validates :salary, presence: true, numericality: true, length: {maximum: 5}

end
