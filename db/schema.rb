# encoding: UTF-8
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

<<<<<<< HEAD

ActiveRecord::Schema.define(version: 20160507211711) do
=======
ActiveRecord::Schema.define(version: 20160507211930) do
>>>>>>> fd9b2e5... Adding deputy_name to deputy table


  create_table "achievements", force: :cascade do |t|
  end


  create_table "cabinets", force: :cascade do |t|
    t.string   "phone"
    t.string   "annex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


  create_table "deputies", force: :cascade do |t|
    t.integer "registration"
    t.string  "legislation_situation"
    t.integer "party_id"
    t.integer "uf_id"
    t.string  "deputy_name"
  end

  create_table "gamifications", force: :cascade do |t|
    t.integer  "actable_id"
    t.string   "actable_type"
    t.string   "name"
    t.integer  "experience_points"
    t.string   "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "parties", force: :cascade do |t|
    t.string   "name"
    t.string   "initials"
    t.integer  "uf_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer  "actable_id"
    t.string   "actable_type"
    t.string   "name"
    t.string   "gender"
    t.string   "email"
    t.string   "age"
    t.integer  "uf_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "quests", force: :cascade do |t|
  end

  create_table "ufs", force: :cascade do |t|
    t.string   "name"
    t.string   "initials"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string  "password_digest"
    t.integer "experience_points", default: 0,     null: false
    t.boolean "role_admin",        default: false, null: false
    t.integer "uf_id"
  end

end
