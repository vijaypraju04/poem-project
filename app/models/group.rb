class Group < ApplicationRecord
  has_many :poems
  has_many :group_users
  has_many :users, through: :group_users
end
