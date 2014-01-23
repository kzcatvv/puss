json.array!(@user_infos) do |user_info|
  json.extract! user_info, :id, :user_id, :user_password, :user_name, :user_sex, :user_birth, :user_phone_number, :user_company, :user_department, :user_kind, :user_limit, :user_info
  json.url user_info_url(user_info, format: :json)
end
