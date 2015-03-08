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

ActiveRecord::Schema.define(version: 20150308023812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "admins_projects", id: false, force: true do |t|
    t.integer "admin_id",   null: false
    t.integer "project_id", null: false
  end

  add_index "admins_projects", ["admin_id", "project_id"], name: "index_admins_projects_on_admin_id_and_project_id", using: :btree
  add_index "admins_projects", ["project_id", "admin_id"], name: "index_admins_projects_on_project_id_and_admin_id", using: :btree

  create_table "permits", force: true do |t|
    t.string   "status"
    t.boolean  "sec1_q1"
    t.boolean  "sec1_q2"
    t.boolean  "sec1_q3"
    t.boolean  "sec1_q4"
    t.boolean  "sec1_q5"
    t.string   "sec1_q6"
    t.boolean  "sec1_q7"
    t.string   "sec1_q8"
    t.string   "sec1_q9"
    t.string   "sec1_q10"
    t.boolean  "sec1_q11"
    t.string   "sec1_q12"
    t.string   "sec1_q13"
    t.boolean  "sec1_q14"
    t.string   "firewatch_sign_start"
    t.integer  "project_id"
    t.string   "location"
    t.string   "building"
    t.integer  "floor"
    t.text     "task"
    t.string   "company"
    t.string   "subcontractor_name"
    t.datetime "issued"
    t.datetime "expires"
    t.integer  "admin_id"
    t.text     "comments"
    t.boolean  "sec3_q1"
    t.boolean  "sec3_q2"
    t.datetime "sec3_date"
    t.string   "subcontractor_sign"
    t.string   "firewatch_sign_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.integer  "number"
    t.string   "phase"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
