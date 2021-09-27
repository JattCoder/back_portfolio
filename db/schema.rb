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

ActiveRecord::Schema.define(version: 2020_06_18_381955) do

  create_table "abouts", force: :cascade do |t|
    t.string "name"
    t.text "description"
  end

  create_table "apps", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.string "shortDesc"
    t.text "description"
    t.string "images"
  end

  create_table "educations", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.string "description"
  end

  create_table "homes", force: :cascade do |t|
    t.integer "likes"
    t.string "linkedin"
    t.string "github"
    t.string "email"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.string "title"
    t.string "responsibility"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "img"
  end

  create_table "quotes", force: :cascade do |t|
    t.string "quote"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "review"
  end

end
