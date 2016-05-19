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

ActiveRecord::Schema.define(version: 20160505065952) do

  create_table "assign_projects", force: :cascade do |t|
    t.integer  "employee_id",       limit: 4
    t.integer  "create_project_id", limit: 4
    t.date     "from_date"
    t.date     "to_date"
    t.string   "duration",          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "created_by",        limit: 45
    t.string   "updated_by",        limit: 45
  end

  create_table "create_projects", force: :cascade do |t|
    t.string   "project_name", limit: 255
    t.string   "location",     limit: 45
    t.string   "project_lead", limit: 45
    t.string   "team_lead",    limit: 45
    t.integer  "total_team",   limit: 4
    t.string   "desc_project", limit: 255
    t.datetime "created_at"
    t.date     "updated_at"
    t.string   "created_by",   limit: 45
    t.string   "updated_by",   limit: 45
    t.string   "duration",     limit: 40
    t.date     "from_date"
    t.date     "to_date"
  end

  create_table "employees", force: :cascade do |t|
    t.string  "emp_name",   limit: 45
    t.string  "emp_id",     limit: 45
    t.string  "created_at", limit: 45
    t.string  "updated_at", limit: 45
    t.string  "created_by", limit: 45
    t.string  "updated_by", limit: 45
    t.string  "mbl_number", limit: 45
    t.integer "user_id",    limit: 4
    t.string  "position",   limit: 45
  end

  add_index "employees", ["id"], name: "idemployees_UNIQUE", unique: true, using: :btree
  add_index "employees", ["user_id"], name: "user_id", using: :btree

  create_table "new_table", force: :cascade do |t|
    t.integer "aaa",  limit: 4
    t.string  "a_id", limit: 1
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "task_name",     limit: 45
    t.datetime "task_date"
    t.string   "task_duration", limit: 45
    t.string   "task_desc",     limit: 45
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "created_by",    limit: 45
    t.string   "updated_by",    limit: 45
    t.float    "task_hour",     limit: 24
    t.string   "task_status",   limit: 45
    t.integer  "employee_id",   limit: 4
  end

  add_index "tasks", ["employee_id"], name: "employee_id", using: :btree
  add_index "tasks", ["id"], name: "id_UNIQUE", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "employees", "users", name: "employees_ibfk_1"
  add_foreign_key "tasks", "employees", name: "tasks_ibfk_1"
end
