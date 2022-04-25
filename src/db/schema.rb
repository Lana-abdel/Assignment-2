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

ActiveRecord::Schema.define(version: 2022_04_25_080813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_configs", force: :cascade do |t|
    t.string "name"
    t.string "logo_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "helpquizzes", force: :cascade do |t|
    t.string "answer_1"
    t.string "answer_2"
    t.string "answer_3"
    t.string "answer_4"
    t.string "answer_5"
    t.string "answer_6"
    t.string "answer_7"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "correct", default: false
    t.float "points", default: 0.0
    t.float "total_points", default: 12.0
    t.boolean "correct_2", default: false
    t.boolean "correct_3", default: false
    t.boolean "correct_4", default: false
    t.boolean "correct_5", default: false
    t.boolean "correct_6", default: false
  end

  create_table "lawquizzes", force: :cascade do |t|
    t.string "answer_1"
    t.string "answer_2"
    t.string "answer_3"
    t.string "answer_4"
    t.string "answer_5"
    t.string "answer_6"
    t.string "answer_7"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "correct", default: false
    t.float "points", default: 0.0
    t.float "total_points", default: 12.0
    t.boolean "correct_2"
    t.boolean "correct_3"
    t.boolean "correct_4"
    t.boolean "correct_5"
    t.boolean "correct_6"
    t.boolean "correct_22", default: false
    t.boolean "correct_32", default: false
    t.boolean "correct_42", default: false
    t.boolean "correct_52", default: false
    t.boolean "correct_62", default: false
  end

  create_table "quiz1s", force: :cascade do |t|
    t.string "answer_1"
    t.string "distractor_11"
    t.string "distractor_21"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "points", default: 0
    t.integer "total_points", default: 10
    t.boolean "correct_1", default: false
    t.string "answer_2"
    t.boolean "correct_2"
    t.boolean "correct_3", default: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "question"
    t.string "answer"
    t.string "distractor_1"
    t.string "distractor_2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "statsquizzes", force: :cascade do |t|
    t.string "answer_1"
    t.string "answer_2"
    t.string "answer_3"
    t.string "answer_4"
    t.string "answer_5"
    t.string "answer_6"
    t.string "answer_7"
    t.string "answer_8"
    t.string "answer_9"
    t.string "answer_10"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "correct", default: false
    t.float "points", default: 0.0
    t.float "total_points", default: 12.0
    t.boolean "correct_2", default: false
    t.boolean "correct_3", default: false
    t.boolean "correct_4", default: false
    t.boolean "correct_5", default: false
    t.boolean "correct_6", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
