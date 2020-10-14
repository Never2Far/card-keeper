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

ActiveRecord::Schema.define(version: 14) do

  create_table "cards", force: :cascade do |t|
    t.integer "collection_id"
    t.integer "player_id"
    t.string "condition"
    t.float "estimated_value"
    t.string "special_attribute"
    t.integer "contract_id"
    t.integer "user_id"
    t.integer "sport_id"
    t.integer "position_id"
    t.integer "team_id"
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "sport_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "team_id"
    t.integer "player_id"
    t.integer "position_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.string "number"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.integer "sport_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "sport_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
  end

end
