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

ActiveRecord::Schema.define(version: 20200822051025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.bigint "categories_id"
    t.bigint "library_location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categories_id"], name: "index_books_on_categories_id"
    t.index ["library_location_id"], name: "index_books_on_library_location_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "ref"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_categories_on_name", unique: true
    t.index ["ref"], name: "index_categories_on_ref", unique: true
  end

  create_table "library_locations", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "ref"
    t.string "location_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_library_locations_on_name", unique: true
    t.index ["ref"], name: "index_library_locations_on_ref", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 20
    t.string "email"
    t.string "address"
    t.string "phone"
    t.string "profile_url"
    t.string "city"
    t.string "password_digest"
    t.boolean "is_admin"
    t.boolean "is_deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "books", "categories", column: "categories_id"
  add_foreign_key "books", "library_locations"
end
