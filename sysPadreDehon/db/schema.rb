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

ActiveRecord::Schema.define(version: 20160803195329) do

  create_table "behaviors", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "disease_medic_infos", force: :cascade do |t|
    t.integer  "disease_id",    limit: 4
    t.integer  "medic_info_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "disease_medic_infos", ["disease_id"], name: "index_disease_medic_infos_on_disease_id", using: :btree
  add_index "disease_medic_infos", ["medic_info_id"], name: "index_disease_medic_infos_on_medic_info_id", using: :btree

  create_table "diseases", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "medic_infos", force: :cascade do |t|
    t.string   "surgery",    limit: 255, default: "Não"
    t.string   "treatment",  limit: 255, default: "Não"
    t.string   "allergic",   limit: 255, default: "Não"
    t.string   "intolerant", limit: 255, default: "Não"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "responsibles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "rg",         limit: 255
    t.string   "cpf",        limit: 255
    t.string   "schooling",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "student_behaviors", force: :cascade do |t|
    t.integer  "student_id",  limit: 4
    t.integer  "behavior_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "student_behaviors", ["behavior_id"], name: "index_student_behaviors_on_behavior_id", using: :btree
  add_index "student_behaviors", ["student_id"], name: "index_student_behaviors_on_student_id", using: :btree

  create_table "student_responsibles", force: :cascade do |t|
    t.integer  "student_id",     limit: 4
    t.integer  "responsible_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "student_responsibles", ["responsible_id"], name: "index_student_responsibles_on_responsible_id", using: :btree
  add_index "student_responsibles", ["student_id"], name: "index_student_responsibles_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "birth_date",       limit: 255
    t.string   "place_of_birth",   limit: 255
    t.integer  "school_year",      limit: 4
    t.string   "start_date",       limit: 255
    t.string   "another_behavior", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "medic_info_id",    limit: 4
  end

  add_index "students", ["medic_info_id"], name: "index_students_on_medic_info_id", using: :btree

  add_foreign_key "students", "medic_infos"
end
