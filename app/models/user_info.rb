class UserInfo < ActiveRecord::Base
	USER_SEX = {"0" => "male", "1" => "female"}
	USER_KIND = {"0" => "admin0", "1" => "admin1", "2" => "user"}
	USER_LIMIT = {1 => "food", 2 => "sports", 4 => "others", 8 => "another"}
end
