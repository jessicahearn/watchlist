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

ActiveRecord::Schema.define(version: 20150218231224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "length"
    t.integer  "part_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "episodes", ["part_id"], name: "index_episodes_on_part_id", using: :btree

  create_table "parts", force: :cascade do |t|
    t.string   "title"
    t.integer  "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "parts", ["program_id"], name: "index_parts_on_program_id", using: :btree

  create_table "programs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "format"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "watch_marker_episodes", force: :cascade do |t|
    t.integer  "watch_marker_part_id"
    t.integer  "episode_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.boolean  "completed",            default: false
  end

  add_index "watch_marker_episodes", ["episode_id"], name: "index_watch_marker_episodes_on_episode_id", using: :btree
  add_index "watch_marker_episodes", ["watch_marker_part_id"], name: "index_watch_marker_episodes_on_watch_marker_part_id", using: :btree

  create_table "watch_marker_parts", force: :cascade do |t|
    t.integer  "watch_marker_id"
    t.integer  "part_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "watch_marker_parts", ["part_id"], name: "index_watch_marker_parts_on_part_id", using: :btree
  add_index "watch_marker_parts", ["watch_marker_id"], name: "index_watch_marker_parts_on_watch_marker_id", using: :btree

  create_table "watch_markers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "program_id"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "watch_markers", ["program_id"], name: "index_watch_markers_on_program_id", using: :btree
  add_index "watch_markers", ["user_id"], name: "index_watch_markers_on_user_id", using: :btree

end
