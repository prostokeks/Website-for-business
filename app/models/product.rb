class Product < ApplicationRecord

  has_many_attached :images
  has_one_attached :avatar

  has_and_belongs_to_many :users

  STATUS=[:active, :passive]
  TYPE=[:internal, :outsourcing]

end
