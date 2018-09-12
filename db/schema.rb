ActiveRecord::Schema.define(version: 2018_09_11_094403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "finished_guitars", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "attachments"
  end

  create_table "progresses", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.json "pictures"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string "url"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end