# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_03_192834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "realms", force: :cascade do |t|
    t.string "realm"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string "status"
    t.string "challenges"
    t.string "learned"
    t.string "image"
    t.bigint "resolution_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resolution_id"], name: "index_reports_on_resolution_id"
  end

  create_table "resolutions", force: :cascade do |t|
    t.string "goal"
    t.string "motivation"
    t.string "image"
    t.bigint "realm_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["realm_id"], name: "index_resolutions_on_realm_id"
    t.index ["user_id"], name: "index_resolutions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "reports", "resolutions"
  add_foreign_key "resolutions", "realms"
  add_foreign_key "resolutions", "users"
end
