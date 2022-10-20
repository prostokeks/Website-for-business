class Invoice < ApplicationRecord

  has_and_belongs_to_many :years
  has_and_belongs_to_many :months
  has_and_belongs_to_many :users
  has_and_belongs_to_many :products

  validates :time, presence: true, numericality: true, length: {maximum: 3}
  validates :rate, presence: true, numericality: true, length: {maximum: 3}

end
