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

ActiveRecord::Schema.define(:version => 20140725083358) do

  create_table "homes", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "information", :force => true do |t|
    t.text "mls_id"
    t.text "mls_name"
    t.text "sale_type"
    t.text "listing_status"
    t.text "apn"
    t.text "address"
    t.text "suite"
    t.text "street"
    t.text "street_name"
    t.text "city"
    t.text "state"
    t.text "zip"
    t.text "sale_date"
    t.text "sale_price"
    t.text "concession_amount"
    t.text "owner"
    t.text "days_on_market"
    t.text "original_listing_price"
    t.text "original_listing_date"
    t.text "current_listing_price"
    t.text "current_listing_date"
    t.text "contact_date"
    t.text "financing_type"
    t.text "listing_status_date"
    t.text "public_remarks"
    t.text "agent_remarks"
    t.text "user_id"
    t.text "exel_id"
    t.text "created_at"
  end

  create_table "information_errors", :force => true do |t|
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
    t.text   "comments"
    t.string "exel_id"
    t.string "user_id"
    t.string "created_at"
  end

  create_table "master_tables", :force => true do |t|
    t.string   "name"
    t.string   "mandidatory_fields"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
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
