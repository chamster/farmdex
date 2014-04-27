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

ActiveRecord::Schema.define(version: 20140413202128) do

  create_table "animals", force: true do |t|
    t.string   "name"
    t.string   "eartag"
    t.string   "reg_num"
    t.integer  "sex_id"
    t.date     "date_birth"
    t.date     "date_acquired"
    t.date     "date_removed"
    t.integer  "status_id"
    t.integer  "num_horns"
    t.integer  "sire_id"
    t.integer  "dam_id"
    t.integer  "source_id"
    t.integer  "origin_id"
    t.integer  "percent_black"
    t.integer  "percent_lilac"
    t.boolean  "for_sale",           default: false
    t.integer  "for_sale_status_id"
    t.integer  "quality_id"
    t.integer  "sale_price"
    t.boolean  "to_be_culled",       default: false
    t.text     "comments"
    t.text     "comments_web"
    t.boolean  "core_flock",         default: false
    t.integer  "birth_id"
    t.boolean  "rejected_at_birth",  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "show_on_website",    default: false
  end

  create_table "animals2", id: false, force: true do |t|
    t.string  "name",               limit: 100, default: "",    null: false
    t.string  "eartag",             limit: 5
    t.string  "reg_num",            limit: 11
    t.boolean "sex_id",                                         null: false
    t.date    "date_birth"
    t.date    "date_acquired"
    t.date    "date_removed"
    t.integer "status_id",          limit: 1,                   null: false
    t.boolean "num_horns"
    t.integer "sire_id"
    t.integer "dam_id"
    t.integer "source_id",          limit: 1,                   null: false
    t.integer "origin_id",          limit: 1
    t.integer "percent_black",      limit: 1
    t.integer "percent_lilac",      limit: 1
    t.boolean "for_sale",                       default: false
    t.integer "for_sale_status_id", limit: 1,                   null: false
    t.integer "quality_id",         limit: 1,                   null: false
    t.integer "sale_price"
    t.boolean "to_be_culled",                   default: false, null: false
    t.text    "comments"
    t.text    "comments_web"
    t.boolean "show_on_website",                default: false, null: false
    t.boolean "core_flock",                     default: false, null: false
    t.integer "birth_id",                                       null: false
    t.boolean "rejected_at_birth",              default: false, null: false
  end

  add_index "animals2", ["core_flock"], name: "core_flock", using: :btree
  add_index "animals2", ["date_acquired"], name: "date_acquired", using: :btree
  add_index "animals2", ["date_birth"], name: "dob", using: :btree
  add_index "animals2", ["date_removed"], name: "date_removed", using: :btree
  add_index "animals2", ["for_sale"], name: "for_sale", using: :btree
  add_index "animals2", ["name"], name: "sheep_name", using: :btree
  add_index "animals2", ["num_horns"], name: "num_horns", using: :btree
  add_index "animals2", ["show_on_website"], name: "show_on_website", using: :btree

  create_table "births", force: true do |t|
    t.datetime "date",                             null: false
    t.string   "dam_id",   limit: 11, default: "", null: false
    t.string   "sire_id",  limit: 11, default: "", null: false
    t.text     "comments",                         null: false
  end

  add_index "births", ["dam_id"], name: "mother_sheep_id", using: :btree
  add_index "births", ["date"], name: "date", using: :btree

  create_table "event_categories", force: true do |t|
    t.text    "event_category", limit: 255
    t.integer "sort_order"
  end

  create_table "events", force: true do |t|
    t.datetime "event_date",                  null: false
    t.text     "event_title",                 null: false
    t.text     "event_details",               null: false
    t.integer  "event_category_id", limit: 1, null: false
  end

  create_table "events_sheep", force: true do |t|
    t.integer "event_id", null: false
    t.integer "sheep_id", null: false
  end

  add_index "events_sheep", ["event_id"], name: "event_id", using: :btree
  add_index "events_sheep", ["sheep_id"], name: "sheep_id", using: :btree

  create_table "for_sale_statuses", force: true do |t|
    t.string  "for_sale_status", limit: 55, default: "", null: false
    t.integer "sort_order",      limit: 1,               null: false
  end

  create_table "harvests", force: true do |t|
    t.date "harvest_date",             null: false
    t.text "notes",        limit: 255, null: false
  end

  create_table "harvests_sheep", force: true do |t|
    t.integer "harvest_id",        limit: 1,                null: false
    t.string  "sheep_id",          limit: 11,  default: "", null: false
    t.string  "sheep_description", limit: 100, default: "", null: false
    t.text    "notes",             limit: 255,              null: false
  end

  create_table "origins", force: true do |t|
    t.text     "origin"
    t.text     "flock_name"
    t.integer  "sort_order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price",       precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qualities", force: true do |t|
    t.string   "quality"
    t.integer  "sort_order", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sexes", force: true do |t|
    t.string "sex", limit: 1, default: "", null: false
  end

  create_table "sources", id: false, force: true do |t|
    t.integer "id",         limit: 1,   null: false
    t.text    "source",     limit: 255, null: false
    t.integer "sort_order",             null: false
  end

  create_table "statuses", force: true do |t|
    t.string  "status",     limit: 55, default: "", null: false
    t.integer "sort_order", limit: 1,               null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
