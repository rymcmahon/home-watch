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

ActiveRecord::Schema.define(version: 20160513133423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_address"
    t.string   "unit"
    t.string   "phone_one"
    t.string   "phone_two"
    t.string   "email_one"
    t.string   "email_two"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "inspections", force: :cascade do |t|
    t.string   "mail"
    t.string   "front_door"
    t.string   "security_system"
    t.string   "water_main"
    t.string   "water_heater"
    t.string   "garage_access_door"
    t.string   "garage_overhead_door"
    t.string   "outdoor_trash"
    t.string   "indoor_trash"
    t.string   "breaker_box"
    t.string   "washer"
    t.string   "dryer"
    t.string   "smoke_detectors"
    t.string   "ceiling_fans"
    t.string   "humidistat"
    t.string   "thermostat"
    t.string   "cabinets_drawers"
    t.string   "refrigerator"
    t.string   "freezer"
    t.string   "garbage_disposal"
    t.string   "dishwasher"
    t.string   "faucets"
    t.string   "toilets"
    t.string   "doors_windows"
    t.string   "ceilings_walls"
    t.string   "screen_doors"
    t.string   "pool"
    t.string   "exterior"
    t.string   "pests"
    t.string   "general_cleanliness"
    t.string   "carpet_cleanliness"
    t.string   "window_cleanliness"
    t.string   "patio_cleanliness"
    t.integer  "client_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "inspections", ["client_id"], name: "index_inspections_on_client_id", using: :btree

  add_foreign_key "inspections", "clients"
end
