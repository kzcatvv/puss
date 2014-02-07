class ChangePasswordDigestToUserInfos < ActiveRecord::Migration
  def change
  	remove_column :user_infos, :user_password
  	add_column :user_infos, :password_digest, :string
  end
end
