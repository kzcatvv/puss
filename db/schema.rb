# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140124083933) do

  create_table "place_infos", force: true do |t|
    t.string   "place_kind"
    t.string   "place_name"
    t.string   "place_workday_start1"
    t.string   "place_workday_end1"
    t.string   "place_workday_start2"
    t.string   "place_workday_end2"
    t.string   "place_workday_start3"
    t.string   "place_workday_end3"
    t.string   "place_weekend_start1"
    t.string   "place_weekend_end1"
    t.string   "place_weekend_start2"
    t.string   "place_weekend_end2"
    t.string   "place_weekend_start3"
    t.string   "place_weekend_end3"
    t.string   "place_holiday_start1"
    t.string   "place_holiday_end1"
    t.string   "place_holiday_start2"
    t.string   "place_holiday_end2"
    t.string   "place_holiday_start3"
    t.string   "place_holiday_end3"
    t.text     "place_info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "place_no"
  end

  create_table "user_infos", force: true do |t|
    t.string   "user_id"
    t.string   "user_password"
    t.string   "user_name"
    t.string   "user_sex"
    t.string   "user_birth"
    t.string   "user_phone_number"
    t.string   "user_company"
    t.string   "user_department"
    t.string   "user_kind"
    t.integer  "user_limit"
    t.text     "user_info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
