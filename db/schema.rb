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

ActiveRecord::Schema.define(version: 20150828105918) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "contribution_translations", force: :cascade do |t|
    t.integer  "contribution_id", null: false
    t.string   "locale",          null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
  end

  add_index "contribution_translations", ["contribution_id"], name: "index_contribution_translations_on_contribution_id", using: :btree
  add_index "contribution_translations", ["locale"], name: "index_contribution_translations_on_locale", using: :btree

  create_table "contributions", force: :cascade do |t|
    t.integer  "project_id"
    t.uuid     "person"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contributions", ["person"], name: "index_contributions_on_person", using: :btree
  add_index "contributions", ["project_id"], name: "index_contributions_on_project_id", using: :btree

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "images", force: :cascade do |t|
    t.string   "image"
    t.string   "kind"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["project_id"], name: "index_images_on_project_id", using: :btree

  create_table "people", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "fullname"
    t.text     "description"
    t.string   "position"
    t.string   "image"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "github"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "blog"
    t.text     "introduction"
    t.string   "slug"
    t.string   "nickname"
    t.string   "skills",       default: ""
    t.string   "technologies", default: ""
  end

  add_index "people", ["slug"], name: "index_people_on_slug", using: :btree

  create_table "person_translations", force: :cascade do |t|
    t.integer  "person_id",    null: false
    t.string   "locale",       null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "introduction"
  end

  add_index "person_translations", ["locale"], name: "index_person_translations_on_locale", using: :btree
  add_index "person_translations", ["person_id"], name: "index_person_translations_on_person_id", using: :btree

  create_table "project_translations", force: :cascade do |t|
    t.integer  "project_id",  null: false
    t.string   "locale",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
    t.string   "subtitle"
  end

  add_index "project_translations", ["locale"], name: "index_project_translations_on_locale", using: :btree
  add_index "project_translations", ["project_id"], name: "index_project_translations_on_project_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "description"
    t.string   "url"
    t.string   "thumbnail"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "contributions", "projects"
end
