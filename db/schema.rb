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

ActiveRecord::Schema.define(version: 2021_01_08_143743) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnis", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.boolean "is_mentor", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "about"
    t.string "city"
    t.index ["email"], name: "index_alumnis_on_email", unique: true
    t.index ["reset_password_token"], name: "index_alumnis_on_reset_password_token", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "alumni_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["alumni_id"], name: "index_articles_on_alumni_id"
  end

  create_table "candidacies", force: :cascade do |t|
    t.string "status", default: "pending"
    t.bigint "alumni_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "role_id"
    t.index ["alumni_id"], name: "index_candidacies_on_alumni_id"
    t.index ["role_id"], name: "index_candidacies_on_role_id"
  end

  create_table "entrepreneurs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "company_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "about"
    t.index ["email"], name: "index_entrepreneurs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_entrepreneurs_on_reset_password_token", unique: true
  end

  create_table "language_alumnis", force: :cascade do |t|
    t.bigint "language_id", null: false
    t.bigint "alumni_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["alumni_id"], name: "index_language_alumnis_on_alumni_id"
    t.index ["language_id"], name: "index_language_alumnis_on_language_id"
  end

  create_table "language_roles", force: :cascade do |t|
    t.bigint "role_id", null: false
    t.bigint "language_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["language_id"], name: "index_language_roles_on_language_id"
    t.index ["role_id"], name: "index_language_roles_on_role_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "svg"
    t.string "category"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "pain"
    t.text "target"
    t.text "solution"
    t.text "description"
    t.string "status", default: "pending"
    t.integer "duration"
    t.integer "compensation_in_cents"
    t.boolean "is_validated", default: false
    t.bigint "entrepreneur_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entrepreneur_id"], name: "index_projects_on_entrepreneur_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.string "status"
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_roles_on_project_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.boolean "completed", default: false
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

  add_foreign_key "articles", "alumnis"
  add_foreign_key "candidacies", "alumnis"
  add_foreign_key "candidacies", "roles"
  add_foreign_key "language_alumnis", "alumnis"
  add_foreign_key "language_alumnis", "languages"
  add_foreign_key "language_roles", "languages"
  add_foreign_key "language_roles", "roles"
  add_foreign_key "projects", "entrepreneurs"
  add_foreign_key "roles", "projects"
  add_foreign_key "tasks", "projects"
end
