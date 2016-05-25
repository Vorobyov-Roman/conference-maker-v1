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

ActiveRecord::Schema.define(version: 20160525175634) do

  create_table "applications", force: :cascade do |t|
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "author_id"
    t.integer  "reviewer_id"
    t.integer  "topic_id"
  end

  add_index "applications", ["author_id"], name: "index_applications_on_author_id"
  add_index "applications", ["reviewer_id"], name: "index_applications_on_reviewer_id"
  add_index "applications", ["topic_id"], name: "index_applications_on_topic_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "discount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "categories_users", id: false, force: :cascade do |t|
    t.integer "user_id",     null: false
    t.integer "category_id", null: false
  end

  add_index "categories_users", ["user_id", "category_id"], name: "index_categories_users_on_user_id_and_category_id"

  create_table "conferences", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "creators", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "profile_id"
    t.integer  "conference_id"
  end

  add_index "creators", ["conference_id"], name: "index_creators_on_conference_id"
  add_index "creators", ["profile_id"], name: "index_creators_on_profile_id"

  create_table "emails", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "emails", ["user_id"], name: "index_emails_on_user_id"

  create_table "reviewers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "profile_id"
    t.integer  "topic_id"
  end

  add_index "reviewers", ["profile_id"], name: "index_reviewers_on_profile_id"
  add_index "reviewers", ["topic_id"], name: "index_reviewers_on_topic_id"

  create_table "talks", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "topic_id"
    t.integer  "author_id"
  end

  add_index "talks", ["author_id"], name: "index_talks_on_author_id"
  add_index "talks", ["topic_id"], name: "index_talks_on_topic_id"

  create_table "topics", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "conference_id"
  end

  add_index "topics", ["conference_id"], name: "index_topics_on_conference_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "login"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
