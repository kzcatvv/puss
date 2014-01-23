class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :user_id
      t.string :user_password
      t.string :user_name
      t.string :user_sex
      t.string :user_birth
      t.string :user_phone_number
      t.string :user_company
      t.string :user_department
      t.string :user_kind
      t.integer :user_limit
      t.text :user_info

      t.timestamps
    end
  end
end
