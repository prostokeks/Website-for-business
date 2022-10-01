class Library < ApplicationRecord

  has_one_attached :avatar

  has_and_belongs_to_many :flibraries
  has_and_belongs_to_many :users

  validates :title, presence: true, length: {maximum: 100}
  validates :body, presence: true, length: {in: 100..3000}

end
