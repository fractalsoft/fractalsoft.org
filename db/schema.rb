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

ActiveRecord::Schema.define(version: 20151106112536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "cieszyn_jobs", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contribution_translations", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "contribution_id", null: false
    t.string   "locale",          null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
  end

  add_index "contribution_translations", ["contribution_id"], name: "index_contribution_translations_on_contribution_id", using: :btree
  add_index "contribution_translations", ["locale"], name: "index_contribution_translations_on_locale", using: :btree

  create_table "contributions", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "person_id"
    t.uuid     "project_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contributions", ["person_id"], name: "index_contributions_on_person_id", using: :btree
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

  create_table "images", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "image"
    t.string   "kind"
    t.uuid     "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["project_id"], name: "index_images_on_project_id", using: :btree

  create_table "people", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "nickname"
    t.string   "fullname",                  null: false
    t.string   "position"
    t.string   "image"
    t.string   "blog"
    t.string   "github"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "linkedin"
    t.string   "website"
    t.string   "email"
    t.string   "skills",       default: ""
    t.string   "technologies", default: ""
    t.string   "saying"
    t.text     "introduction"
    t.text     "description"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["slug"], name: "index_people_on_slug", using: :btree

  create_table "person_translations", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "person_id",    null: false
    t.string   "locale",       null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "saying"
    t.text     "introduction"
  end

  add_index "person_translations", ["locale"], name: "index_person_translations_on_locale", using: :btree
  add_index "person_translations", ["person_id"], name: "index_person_translations_on_person_id", using: :btree

  create_table "project_translations", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "project_id",   null: false
    t.string   "locale",       null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "subtitle"
    t.text     "introduction"
    t.text     "description"
  end

  add_index "project_translations", ["locale"], name: "index_project_translations_on_locale", using: :btree
  add_index "project_translations", ["project_id"], name: "index_project_translations_on_project_id", using: :btree

  create_table "projects", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "title",        null: false
    t.string   "subtitle"
    t.string   "url"
    t.text     "introduction"
    t.text     "description"
    t.string   "thumbnail"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
