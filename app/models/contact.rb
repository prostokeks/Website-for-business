class Contact < ApplicationRecord

  validates :body, :name, :mobile, :email, presence: true
  validates :body, length: {in: 10..300}
  validates :name, length: {in: 2..50}
  validates :mobile, length: {in: 8..20}
  validates :email, length: {in: 10..100}
  validates_format_of :email, with: Devise::email_regexp

  STATUS=["Closed", "Opend"]

end
