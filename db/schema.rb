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

ActiveRecord::Schema.define(version: 20131218231600) do

  create_table "lancamentos", force: true do |t|
    t.integer  "user_id"
    t.date     "data"
    t.text     "descricao"
    t.float    "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lancamentos", ["user_id"], name: "index_lancamentos_on_user_id", using: :btree

  create_table "searches", force: true do |t|
    t.integer  "user_id"
    t.date     "min_date"
    t.date     "max_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nome"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
