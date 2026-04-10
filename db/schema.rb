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

ActiveRecord::Schema[8.1].define(version: 2026_04_10_103341) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "projects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "description"
    t.string "link"
    t.string "role"
    t.string "skills", default: [], array: true
    t.integer "team_size", default: 1
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "stages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.bigint "project_id", null: false
    t.string "title"
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_stages_on_project_id"
  end

  add_foreign_key "stages", "projects"
end
