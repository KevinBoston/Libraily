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

ActiveRecord::Schema.define(version: 2020_10_14_162240) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.string "description"
    t.boolean "borrowed"
    t.integer "library_id"
  end

  create_table "check_outs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "book_id"
    t.boolean "read_terms"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "location"
    t.text "bio"
    t.boolean "admin"
    t.string "password_digest"
    t.string "uid"
    t.string "email"
  end

end
