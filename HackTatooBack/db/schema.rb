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

ActiveRecord::Schema.define(version: 20160304000713) do

  create_table "calendars", force: :cascade do |t|
    t.integer  "client_id",   limit: 4
    t.integer  "employee_id", limit: 4
    t.datetime "date"
    t.boolean  "accepted"
    t.boolean  "taken"
    t.string   "picture",     limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "calendars", ["client_id"], name: "index_calendars_on_client_id", using: :btree
  add_index "calendars", ["employee_id"], name: "index_calendars_on_employee_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.string   "token",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.string   "token",           limit: 255
    t.boolean  "admin"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_foreign_key "calendars", "clients"
  add_foreign_key "calendars", "employees"
end
