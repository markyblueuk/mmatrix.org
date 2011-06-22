# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110609203922) do

  create_table "bouts", :force => true do |t|
    t.integer  "fighter1"
    t.integer  "fighter2"
    t.integer  "referee"
    t.integer  "event_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.date     "date"
    t.string   "address_first_line"
    t.string   "address_second_line"
    t.string   "town"
    t.string   "postcode"
    t.string   "phone"
    t.string   "email"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gyms", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "address_first_line"
    t.string   "address_second_line"
    t.string   "town"
    t.string   "postcode"
    t.integer  "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address_first_line"
    t.string   "address_second_line"
    t.string   "address_town"
    t.string   "address_postcode"
    t.string   "phone_mobile"
    t.string   "phone_landline"
    t.string   "account_type"
    t.string   "status"
    t.integer  "range"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "weight_classes", :force => true do |t|
    t.string   "name"
    t.integer  "weight_from"
    t.integer  "weight_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
