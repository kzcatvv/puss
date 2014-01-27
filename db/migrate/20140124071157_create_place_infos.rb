class CreatePlaceInfos < ActiveRecord::Migration
  def change
    create_table :place_infos do |t|
      t.string :place_kind
      t.string :place_no
      t.string :place_name
      t.string :place_workday_start1
      t.string :place_workday_end1
      t.string :place_workday_start2
      t.string :place_workday_end2
      t.string :place_workday_start3
      t.string :place_workday_end3
      t.string :place_weekend_start1
      t.string :place_weekend_end1
      t.string :place_weekend_start2
      t.string :place_weekend_end2
      t.string :place_weekend_start3
      t.string :place_weekend_end3
      t.string :place_holiday_start1
      t.string :place_holiday_end1
      t.string :place_holiday_start2
      t.string :place_holiday_end2
      t.string :place_holiday_start3
      t.string :place_holiday_end3
      t.text :place_info

      t.timestamps
    end
  end
end
