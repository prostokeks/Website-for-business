class Blog < ApplicationRecord

  has_many_attached :images
  has_one_attached :avatar

  validates :title, :body, presence: true
  validates :title, uniqueness: true, length: {maximum: 100}
  validates :body, length: {in: 100..3000}

end
