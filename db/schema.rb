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

ActiveRecord::Schema.define(version: 20170804041234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "tournament_id"
    t.integer  "wins",          default: 0
    t.integer  "losses",        default: 0
    t.integer  "points",        default: 0
    t.string   "status",        default: "registered"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["tournament_id"], name: "index_players_on_tournament_id", using: :btree
    t.index ["user_id"], name: "index_players_on_user_id", using: :btree
  end

  create_table "rounds", force: :cascade do |t|
    t.integer  "seat_1"
    t.integer  "seat_2"
    t.integer  "round_number"
    t.integer  "seat_1_score",  default: 0
    t.integer  "seat_2_score",  default: 0
    t.integer  "winner"
    t.integer  "tournament_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["tournament_id"], name: "index_rounds_on_tournament_id", using: :btree
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "name"
    t.datetime "scheduled_at"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "tournament_type", default: "trial"
    t.string   "status",          default: "scheduled"
    t.integer  "player_slots",    default: 8
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "username"
    t.string   "provider",              default: "discord"
    t.string   "discord_id"
    t.string   "discord_avatar"
    t.string   "discord_discriminator"
    t.string   "token"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "rating",                default: "1000"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  add_foreign_key "players", "tournaments"
  add_foreign_key "players", "users"
  add_foreign_key "rounds", "tournaments"
end
