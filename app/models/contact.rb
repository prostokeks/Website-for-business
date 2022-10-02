class Contact < ApplicationRecord

  validates :body, presence: true, length: {in: 10..300}
  validates :name, presence: true, length: {in: 2..50}
  validates :mobile, presence: true, length: {in: 8..20}
  validates :email, presence: true, length: {in: 10..100}
  validates_format_of :email, with: Devise::email_regexp

  STATUS=["Closed", "Opend"]


end
