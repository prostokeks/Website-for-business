class Year < ApplicationRecord

  has_and_belongs_to_many :months
  has_and_belongs_to_many :salaries

end
