class ChangePasswordDigestDatatype2 < ActiveRecord::Migration[5.1]
  def up
    change_column :users, :password_digest, :string
  end

  def down
    change_column :users, :password_digest, :text
  end
end
