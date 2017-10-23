class Poem < ApplicationRecord
  belongs_to :group
  has_many :comments

  def self.search(search)
    group = Group.find_by(name: search)
    group ? where("group_id == ?", group.id) : all
  end
end
