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

ActiveRecord::Schema.define(:version => 20140715083906) do

  create_table "homes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "information", :force => true do |t|
    t.string "mls_id"
    t.string "mls_name"
    t.string "sale_type"
    t.string "listing_status"
    t.string "apn"
    t.string "address"
    t.string "suite"
    t.string "street"
    t.string "street_name"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "sale_date"
    t.string "sale_price"
    t.string "concession_amount"
    t.string "owner"
    t.string "days_on_market"
    t.string "original_listing_price"
    t.string "original_listing_date"
    t.string "current_listing_price"
    t.string "current_listing_date"
    t.string "contact_date"
    t.string "financing_type"
    t.string "listing_status_date"
    t.string "public_remarks"
    t.string "agent_remarks"
    t.string "user_id"
    t.string "exel_id"
  end

  create_table "master_tables", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "templates", :force => true do |t|
    t.string   "mls_id"
    t.string   "mls_name"
    t.string   "sale_type"
    t.string   "listing_status"
    t.string   "apn"
    t.string   "address"
    t.string   "suite"
    t.string   "street"
    t.string   "street_name"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "sale_date"
    t.string   "sale_price"
    t.string   "concession_amount"
    t.string   "owner"
    t.string   "days_on_market"
    t.string   "original_listing_price"
    t.string   "original_listing_date"
    t.string   "current_listing_price"
    t.string   "current_listing_date"
    t.string   "contact_date"
    t.string   "financing_type"
    t.string   "listing_status_date"
    t.string   "public_remarks"
    t.string   "agent_remarks"
    t.string   "user_id"
    t.string   "exel_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.text     "phone_number"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
