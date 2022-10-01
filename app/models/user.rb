class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  has_many :comments
  has_many :messages

  has_and_belongs_to_many :libraries
  has_and_belongs_to_many :products
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :hobbies
  has_and_belongs_to_many :languages
  has_and_belongs_to_many :salaries

  def name_with_initial
    "(#{role}) #{name} #{last_name}"
  end
  def name_last_name
    "#{name} #{last_name}"
  end

  scope :all_except,->(user){where.not(id: user)}

  after_create_commit {broadcast_append_to "users"}

  ROLE=["Web Designer", "Project Manager", "Back-end Developer", "Front-end Developer"]
  LEVEL=["Junior 1", "Junior 2", "Junior 3", "Middle 1", "Middle 2", "Middle 3", "Senior 1", "Senior 2", "Senior 3"]

  validates :role, inclusion: {in: User::ROLE}, on: :update

end
