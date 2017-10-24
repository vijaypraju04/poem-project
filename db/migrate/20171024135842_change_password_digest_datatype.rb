class ChangePasswordDigestDatatype < ActiveRecord::Migration[5.1]
  def up
    change_column :users, :password_digest, :text
  end

  def down
    change_column :users, :password_digest, :string
  end
end
