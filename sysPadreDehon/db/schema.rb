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

ActiveRecord::Schema.define(version: 20160727164554) do

  create_table "behaviors", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "student_behaviors", force: :cascade do |t|
    t.integer  "student_id",  limit: 4
    t.integer  "behavior_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "student_behaviors", ["behavior_id"], name: "index_student_behaviors_on_behavior_id", using: :btree
  add_index "student_behaviors", ["student_id"], name: "index_student_behaviors_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "birth_date",       limit: 255
    t.string   "place_of_birth",   limit: 255
    t.integer  "school_year",      limit: 4
    t.string   "start_date",       limit: 255
    t.string   "another_behavior", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
