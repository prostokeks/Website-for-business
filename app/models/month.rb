class Month < ApplicationRecord
  has_and_belongs_to_many :salaries
  has_and_belongs_to_many :years
  has_and_belongs_to_many :invoices
end
