class User < ApplicationRecord
  has_many :comments
  has_many :group_users
  has_many :groups, through: :group_users
  has_many :poems, through: :groups

  validates :name, uniqueness: true

  has_secure_password
end
