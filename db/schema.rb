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

ActiveRecord::Schema[7.0].define(version: 2023_06_19_100000) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "communities", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.boolean "published", default: false
    t.integer "position", default: 0, null: false
    t.string "logo"
    t.string "logotype"
    t.string "name"
    t.string "slug"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["slug"], name: "index_communities_on_slug"
  end

  create_table "community_translations", force: :cascade do |t|
    t.uuid "community_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.text "introduction"
    t.string "meta_description"
    t.string "title"
    t.index ["community_id"], name: "index_community_translations_on_community_id"
    t.index ["locale"], name: "index_community_translations_on_locale"
  end

  create_table "computer_fix_service_translations", force: :cascade do |t|
    t.uuid "computer_fix_service_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["computer_fix_service_id"], name: "index_8cbd37260092c65a317fabf1fe6fbf080714a9c0"
    t.index ["locale"], name: "index_computer_fix_service_translations_on_locale"
  end

  create_table "computer_fix_services", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.decimal "price", precision: 16, scale: 4
    t.integer "position", default: 0, null: false
    t.string "currency"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "contribution_translations", force: :cascade do |t|
    t.uuid "contribution_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["contribution_id"], name: "index_contribution_translations_on_contribution_id"
    t.index ["locale"], name: "index_contribution_translations_on_locale"
  end

  create_table "contributions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "position", default: 0, null: false
    t.uuid "person_id"
    t.uuid "project_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["person_id"], name: "index_contributions_on_person_id"
    t.index ["project_id"], name: "index_contributions_on_project_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at", precision: nil
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "images", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "image"
    t.string "kind"
    t.uuid "project_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["project_id"], name: "index_images_on_project_id"
  end

  create_table "job_offer_translations", force: :cascade do |t|
    t.uuid "job_offer_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "brief", default: ""
    t.text "description", default: ""
    t.string "headline"
    t.text "introduction", default: ""
    t.string "meta_description", default: ""
    t.string "meta_title", default: ""
    t.string "name"
    t.string "title"
    t.index ["job_offer_id"], name: "index_job_offer_translations_on_job_offer_id"
    t.index ["locale"], name: "index_job_offer_translations_on_locale"
  end

  create_table "job_offers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.boolean "published", default: false
    t.integer "position", default: 0
    t.string "slug"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "office_address_translations", force: :cascade do |t|
    t.uuid "office_address_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
    t.string "name"
    t.index ["locale"], name: "index_office_address_translations_on_locale"
    t.index ["office_address_id"], name: "index_office_address_translations_on_office_address_id"
  end

  create_table "office_addresses", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.decimal "latitude", precision: 16, scale: 10
    t.decimal "longitude", precision: 16, scale: 10
    t.integer "position", default: 0, null: false
    t.string "city"
    t.string "iso_3166_code"
    t.string "map_link"
    t.string "postcode"
    t.string "slug"
    t.string "street_with_number"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["slug"], name: "index_office_addresses_on_slug"
  end

  create_table "people", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.boolean "published", default: false
    t.integer "position", default: 0, null: false
    t.string "blog"
    t.string "email"
    t.string "facebook"
    t.string "github"
    t.string "image"
    t.string "instagram"
    t.string "linkedin"
    t.string "nickname"
    t.string "skills", default: "", null: false
    t.string "slug"
    t.string "technologies", default: "", null: false
    t.string "twitter"
    t.string "vimeo"
    t.string "website"
    t.text "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "first_name"
    t.string "last_name"
    t.virtual "full_name", type: :string, as: "(((first_name)::text || ' '::text) || (last_name)::text)", stored: true
    t.index ["slug"], name: "index_people_on_slug"
  end

  create_table "person_translations", force: :cascade do |t|
    t.uuid "person_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "introduction"
    t.string "saying"
    t.index ["locale"], name: "index_person_translations_on_locale"
    t.index ["person_id"], name: "index_person_translations_on_person_id"
  end

  create_table "project_translations", force: :cascade do |t|
    t.uuid "project_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.text "introduction"
    t.string "subtitle"
    t.index ["locale"], name: "index_project_translations_on_locale"
    t.index ["project_id"], name: "index_project_translations_on_project_id"
  end

  create_table "projects", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.boolean "display", default: true, null: false
    t.boolean "dofollow", default: false, null: false
    t.integer "position", default: 0, null: false
    t.integer "year"
    t.string "slug"
    t.string "thumbnail"
    t.string "title", null: false
    t.string "url"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["slug"], name: "index_projects_on_slug"
  end

  create_table "technological_skills", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "position", default: 0
    t.integer "rating", default: 0, null: false
    t.uuid "person_id"
    t.uuid "technology_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["person_id"], name: "index_technological_skills_on_person_id"
    t.index ["technology_id"], name: "index_technological_skills_on_technology_id"
  end

  create_table "technologies", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "category", default: 0, null: false
    t.integer "position", default: 0
    t.string "slug"
    t.text "icon"
    t.text "icon_wordmark"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["slug"], name: "index_technologies_on_slug"
  end

  create_table "technology_translations", force: :cascade do |t|
    t.uuid "technology_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description", default: ""
    t.string "meta_description", default: ""
    t.string "meta_title", default: ""
    t.string "name"
    t.string "title"
    t.index ["locale"], name: "index_technology_translations_on_locale"
    t.index ["technology_id"], name: "index_technology_translations_on_technology_id"
  end

end
