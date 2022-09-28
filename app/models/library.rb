class Library < ApplicationRecord

  has_one_attached :avatar

  has_and_belongs_to_many :flibraries
  has_and_belongs_to_many :users
end
