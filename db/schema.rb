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

ActiveRecord::Schema.define(version: 20140616162740) do

  create_table "answers", force: true do |t|
    t.integer  "field_id"
    t.string   "text_answer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "answer_id"
    t.integer  "number",      default: 0
  end

  add_index "answers", ["field_id"], name: "index_answers_on_field_id"

  create_table "answers_replies", id: false, force: true do |t|
    t.integer "answer_id"
    t.integer "reply_id"
  end

  add_index "answers_replies", ["answer_id"], name: "index_answers_replies_on_answer_id"
  add_index "answers_replies", ["reply_id"], name: "index_answers_replies_on_reply_id"

  create_table "fields", force: true do |t|
    t.string   "question"
    t.integer  "fieldset_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "question_id"
    t.string   "question_type"
  end

  add_index "fields", ["fieldset_id"], name: "index_fields_on_fieldset_id"

  create_table "fieldsets", force: true do |t|
    t.text     "json"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "replies", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
