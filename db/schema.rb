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

ActiveRecord::Schema[7.0].define(version: 2022_11_20_164755) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "prompts", force: :cascade do |t|
    t.text "prompt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sentences", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "stories_id"
    t.text "content"
    t.index ["stories_id"], name: "index_sentences_on_stories_id"
    t.index ["user_id"], name: "index_sentences_on_user_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "storyname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "prompt_id"
    t.index ["prompt_id"], name: "index_stories_on_prompt_id"
  end

  create_table "story_authors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "stories_id"
    t.index ["stories_id"], name: "index_story_authors_on_stories_id"
    t.index ["user_id"], name: "index_story_authors_on_user_id"
  end

  create_table "storyrooms", force: :cascade do |t|
    t.bigint "story_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_storyrooms_on_story_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "sentences", "stories", column: "stories_id"
  add_foreign_key "sentences", "users"
  add_foreign_key "stories", "prompts"
  add_foreign_key "story_authors", "stories", column: "stories_id"
  add_foreign_key "story_authors", "users"
  add_foreign_key "storyrooms", "stories"
end
