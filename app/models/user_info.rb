class UserInfo < ActiveRecord::Base
	USER_SEX = {"0" => "男", "1" => "女"}
	USER_KIND = {"0" => "系统管理员", "1" => "模块管理员", "2" => "用户"}
	USER_LIMIT = {1 => "食堂订餐", 2 => "羽毛球预定", 4 => "others"}

	validates :user_id, :presence => true,
			  :length => {:minimum => 6}
	validates :user_password, :presence => true,
			  :length => {:minimum => 5}

end
