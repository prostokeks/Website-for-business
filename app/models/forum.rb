class Forum < ApplicationRecord

  has_many_attached :images
  has_one_attached :avatar

  has_many :comments

  has_and_belongs_to_many :fforums

  STATUS=[:passive, :active]

  validates :title, :body, presence: true
  validates :title, length: {maximum: 100}
  validates :body, length: {in: 100..3000}

end
