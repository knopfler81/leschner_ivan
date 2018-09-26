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

ActiveRecord::Schema.define(version: 2018_09_24_164023) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customizations", force: :cascade do |t|
    t.string "main_image"
    t.string "first_section_image"
    t.string "second_section_image"
    t.string "third_section_image"
    t.string "menu_color"
    t.string "body_color"
    t.string "icon_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "about"
    t.string "background_color", default: "#E2E2E2"
    t.string "navbar_color", default: "#141414"
    t.string "primary_color", default: "#AB803E"
    t.string "secondary_color", default: "#E67E22"
    t.string "big_title_color", default: "##141414"
    t.string "navbar_links_color", default: "#CBCBCB"
    t.string "paragraphe_color", default: "#21252A"

  end

  create_table "finished_guitars", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "attachments"
  end

  create_table "progresses", force: :cascade do |t|
    t.string "title"
    t.text "description"
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
