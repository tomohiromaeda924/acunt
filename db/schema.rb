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

ActiveRecord::Schema.define(version: 2019_03_30_032103) do

# Could not dump table "career_changes" because of following StandardError
#   Unknown type 'strin' for column 'sonota'

  create_table "from_users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "年齢"
  end

  create_table "job_offers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gyoumu"
    t.string "keiyakukikann"
    t.string "siyoukikann"
    t.string "kinnmuti"
    t.string "kinnmuzikann"
    t.string "kyuukei"
    t.string "kyuuzitu"
    t.string "zikanngai"
    t.text "tinnginn"
    t.string "hokenn"
    t.string "name"
    t.string "bosyuusya"
    t.string "email"
    t.integer "user_id"
  end

  create_table "tax_consultations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "email"
    t.text "message"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
  end

end
