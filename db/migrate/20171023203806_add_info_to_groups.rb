class AddInfoToGroups < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :info, :text
  end
end
