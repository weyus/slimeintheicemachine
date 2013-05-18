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

ActiveRecord::Schema.define(version: 20130518182806) do

  create_table "facilities", force: true do |t|
    t.integer  "account_id"
    t.string   "name"
    t.string   "street_address"
    t.string   "street_name"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "phone"
    t.string   "permit_type"
    t.datetime "expiration"
    t.string   "facility_type"
    t.string   "district"
    t.string   "risk"
    t.string   "employees"
    t.integer  "score"
    t.datetime "inspected_on"
    t.string   "activity_type"
    t.string   "inspector_id"
    t.string   "inspector_name"
    t.integer  "no_sites"
  end

  create_table "violations", force: true do |t|
    t.integer  "facility_id"
    t.string   "name"
    t.string   "risk"
    t.string   "address"
    t.string   "facility_type"
    t.datetime "inspected_on"
    t.string   "inspector"
    t.string   "site_type"
    t.string   "violation_code"
    t.integer  "violation_weight"
    t.string   "violation_comments"
    t.datetime "correct_by_date"
    t.integer  "score"
  end

end
