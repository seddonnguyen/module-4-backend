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

ActiveRecord::Schema.define(version: 2019_08_19_193318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aliases", force: :cascade do |t|
    t.string "name"
    t.bigint "fugitive_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fugitive_id"], name: "index_aliases_on_fugitive_id"
  end

  create_table "charges", force: :cascade do |t|
    t.string "name"
    t.bigint "fugitive_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fugitive_id"], name: "index_charges_on_fugitive_id"
  end

  create_table "fugitives", force: :cascade do |t|
    t.string "name"
    t.string "height"
    t.string "weight"
    t.string "race"
    t.string "hair"
    t.string "eyes"
    t.string "sex"
    t.boolean "capture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "aliases", "fugitives"
  add_foreign_key "charges", "fugitives"
end
