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

ActiveRecord::Schema.define(version: 2021_07_29_133312) do

  create_table "businesses", force: :cascade do |t|
    t.string "businessName"
    t.string "description"
    t.string "location"
    t.integer "owner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["owner_id"], name: "index_businesses_on_owner_id"
    t.index ["user_id"], name: "index_businesses_on_user_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "mentors", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "descritpion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_mentors_on_user_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.integer "user_id", null: false
    t.integer "business_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "mentor_id", null: false
    t.index ["business_id"], name: "index_owners_on_business_id"
    t.index ["mentor_id"], name: "index_owners_on_mentor_id"
    t.index ["user_id"], name: "index_owners_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "taskName"
    t.string "description"
    t.date "startDate"
    t.date "endDate"
    t.integer "business_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_tasks_on_business_id"
  end

  create_table "tasks_users", id: false, force: :cascade do |t|
    t.integer "task_id", null: false
    t.integer "user_id", null: false
  end

  create_table "user_tasks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "tasks_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tasks_id"], name: "index_user_tasks_on_tasks_id"
    t.index ["user_id"], name: "index_user_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.text "bio"
    t.string "firstName"
    t.string "lastName"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "businesses", "owners"
  add_foreign_key "businesses", "users"
  add_foreign_key "mentors", "users"
  add_foreign_key "owners", "businesses"
  add_foreign_key "owners", "mentors"
  add_foreign_key "owners", "users"
  add_foreign_key "tasks", "businesses"
  add_foreign_key "user_tasks", "tasks", column: "tasks_id"
  add_foreign_key "user_tasks", "users"
end
