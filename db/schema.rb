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

ActiveRecord::Schema.define(version: 20140123022702) do

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
