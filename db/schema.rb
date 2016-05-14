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

ActiveRecord::Schema.define(version: 20160326060319) do

  create_table "leads", force: :cascade do |t|
    t.string   "encrypted_first_name"
    t.string   "encrypted_last_name"
    t.string   "encrypted_email"
    t.string   "encrypted_phone_number"
    t.integer  "interest_rate"
    t.integer  "loan_amount"
    t.integer  "down_payment"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "encrypted_title"
  end

end