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

ActiveRecord::Schema.define(version: 2019_11_12_001654) do

  create_table "journals", force: :cascade do |t|
    t.string "food_item"
    t.string "meal_type"
    t.string "serving"
    t.string "cal"
    t.string "prot"
    t.string "carbs"
    t.string "fats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "motivates", force: :cascade do |t|
    t.string "motivator"
    t.text "message"
    t.integer "journal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journal_id"], name: "index_motivates_on_journal_id"
  end

  create_table "motivations", force: :cascade do |t|
    t.string "motivater"
    t.text "message"
    t.integer "journals_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["journals_id"], name: "index_motivations_on_journals_id"
  end

end
