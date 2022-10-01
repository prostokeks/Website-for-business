class Product < ApplicationRecord

  has_many_attached :images
  has_one_attached :avatar

  has_and_belongs_to_many :users

  STATUS=[:active, :passive]
  TYPE=[:internal, :outsourcing]

  validates :title, uniqueness: true, presence: true, length: {maximum: 100}
  validates :content, presence: true, length: {in: 100..3000}


end
