class Product < ApplicationRecord

  has_many_attached :images
  has_one_attached :avatar

  has_and_belongs_to_many :users
  has_and_belongs_to_many :invoices

  STATUS=[:active, :passive]
  TYPE=[:internal, :outsourcing]

  validates :title, :content, presence: true
  validates :title, uniqueness: true, length: {maximum: 100}
  validates :content, length: {in: 100..3000}
end
