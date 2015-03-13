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

ActiveRecord::Schema.define(version: 20150313195256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dinners", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name",       null: false
    t.date     "date",       null: false
    t.time     "time",       null: false
    t.string   "location",   null: false
    t.string   "email",      null: false
    t.string   "slug",       null: false
  end

  create_table "rsvps", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "dish",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "dinner_id"
  end

  add_index "rsvps", ["dinner_id"], name: "index_rsvps_on_dinner_id", using: :btree

  add_foreign_key "rsvps", "dinners"
end
