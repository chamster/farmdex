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

ActiveRecord::Schema.define(version: 20131127175430) do

  create_table "animals", force: true do |t|
    t.string   "name"
    t.text     "eartag"
    t.text     "reg_num"
    t.integer  "sex_id"
    t.text     "date_birth"
    t.text     "date_acquired"
    t.text     "date_removed"
    t.integer  "status_id"
    t.integer  "num_horns"
    t.integer  "sire_id"
    t.integer  "dam_id"
    t.integer  "source_id"
    t.integer  "origin_id"
    t.integer  "percent_black"
    t.integer  "percent_lilac"
    t.integer  "for_sale"
    t.integer  "for_sale_status_id"
    t.integer  "quality_id"
    t.integer  "sale_price"
    t.integer  "to_be_culled"
    t.text     "comments"
    t.text     "comments_web"
    t.integer  "show_on_website"
    t.integer  "core_flock"
    t.integer  "birth_id"
    t.integer  "rejected_at_birth"
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

end
