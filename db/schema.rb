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

ActiveRecord::Schema[7.0].define(version: 2023_02_24_004059) do
  create_table "acorn_hashtags", force: :cascade do |t|
    t.integer "acorn_id", null: false
    t.integer "hastag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["acorn_id"], name: "index_acorn_hashtags_on_acorn_id"
    t.index ["hastag_id"], name: "index_acorn_hashtags_on_hastag_id"
  end

  create_table "acorns", force: :cascade do |t|
    t.string "content"
    t.date "date_created"
    t.string "img"
    t.string "link"
    t.boolean "reply"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_acorns_on_user_id"
  end

  create_table "followers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_followers_on_user_id"
  end

  create_table "hashtags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "acorn_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["acorn_id"], name: "index_likes_on_acorn_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "replies", force: :cascade do |t|
    t.integer "acorn_id", null: false
    t.integer "reply_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["acorn_id"], name: "index_replies_on_acorn_id"
    t.index ["reply_id"], name: "index_replies_on_reply_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.string "profile_img"
    t.string "cover_img"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "acorn_hashtags", "acorns"
  add_foreign_key "acorn_hashtags", "hastags"
  add_foreign_key "acorns", "users"
  add_foreign_key "followers", "users"
  add_foreign_key "likes", "acorns"
  add_foreign_key "likes", "users"
  add_foreign_key "replies", "acorns"
  add_foreign_key "replies", "acorns", column: "reply_id"
end
