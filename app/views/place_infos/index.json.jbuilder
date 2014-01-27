json.array!(@place_infos) do |place_info|
  json.extract! place_info, :id, :place_kind, :place_no, :place_name, :place_workday_start1, :place_workday_end1, :place_workday_start2, :place_workday_end2, :place_workday_start3, :place_workday_end3, :place_weekend_start1, :place_weekend_end1, :place_weekend_start2, :place_weekend_end2, :place_weekend_start3, :place_weekend_end3, :place_holiday_start1, :place_holiday_end1, :place_holiday_start2, :place_holiday_end2, :place_holiday_start3, :place_holiday_end3, :place_info
  json.url place_info_url(place_info, format: :json)
end
