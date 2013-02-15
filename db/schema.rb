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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130215115216) do

  create_table "measurement_types", :force => true do |t|
    t.string   "name"
    t.string   "unit"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "measurements", :force => true do |t|
    t.integer  "user_id"
    t.integer  "measurement_type_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "measurements", ["measurement_type_id"], :name => "index_measurements_on_measurement_type_id"
  add_index "measurements", ["user_id"], :name => "index_measurements_on_user_id"

  create_table "metrics", :force => true do |t|
    t.string   "name"
    t.string   "unit"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "standard_measurements", :force => true do |t|
    t.integer  "user_id"
    t.date     "creation_date"
    t.decimal  "weight",              :precision => 5, :scale => 2
    t.decimal  "body_fat_percentage", :precision => 3, :scale => 1
    t.decimal  "muscle_mass",         :precision => 5, :scale => 2
    t.decimal  "water_percentage",    :precision => 3, :scale => 1
    t.decimal  "waist_line",          :precision => 5, :scale => 2
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
  end

  add_index "standard_measurements", ["user_id"], :name => "index_standard_measurements_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "hashed_password"
    t.string   "email"
    t.string   "salt"
    t.datetime "created_at"
  end

end
