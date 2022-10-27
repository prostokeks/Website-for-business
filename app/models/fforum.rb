class Fforum < ApplicationRecord
  has_and_belongs_to_many :forums, dependent: :destroy
end
