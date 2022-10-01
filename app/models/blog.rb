class Blog < ApplicationRecord

  validates :title, presence: true, uniqueness: true

  has_many_attached :images
  has_one_attached :avatar

  validates :title, presence: true, length: {maximum: 100}
  validates :body, presence: true, length: {in: 100..3000}

end
