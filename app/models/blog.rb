class Blog < ApplicationRecord

  validates :title, presence: true, uniqueness: true

  has_many_attached :images
  has_one_attached :avatar



end
