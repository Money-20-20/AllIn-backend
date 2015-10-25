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

ActiveRecord::Schema.define(version: 20151025034735) do

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "scenarios", force: :cascade do |t|
    t.string   "question"
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "scenarios", ["event_id"], name: "index_scenarios_on_event_id"
  add_index "scenarios", ["user_id"], name: "index_scenarios_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.string   "wallet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wagers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "scenario_id"
    t.boolean  "vote"
    t.integer  "amount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "wagers", ["scenario_id"], name: "index_wagers_on_scenario_id"
  add_index "wagers", ["user_id"], name: "index_wagers_on_user_id"

end
