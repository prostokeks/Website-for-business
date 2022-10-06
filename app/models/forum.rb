class Forum < ApplicationRecord

  has_many_attached :images
  has_one_attached :avatar

  has_many :comments

  has_and_belongs_to_many :fforums


  STATUS=[:passive, :active]
  #validates :status, inclusion: {in: %w(passive active)}

  validates :title, presence: true, length: {maximum: 100}
  validates :body, presence: true, length: {in: 100..3000}

end
