# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_10_022002) do
  create_table "missions", force: :cascade do |t|
    t.string "name"
    t.string "playlist_url"
    t.text "how_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routine_missions", force: :cascade do |t|
    t.integer "route_id", null: false
    t.integer "sequence"
    t.integer "mission_id", null: false
    t.integer "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mission_id"], name: "index_routine_missions_on_mission_id"
    t.index ["route_id"], name: "index_routine_missions_on_route_id"
  end

  create_table "routines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "routine_missions", "missions"
  add_foreign_key "routine_missions", "routes"
end
