class Flibrary < ApplicationRecord

  has_and_belongs_to_many :libraries, dependent: :destroy

end
