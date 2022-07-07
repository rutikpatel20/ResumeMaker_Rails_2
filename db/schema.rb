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

ActiveRecord::Schema.define(version: 2022_07_07_094546) do

  create_table "education2s", force: :cascade do |t|
    t.string "degree_title2"
    t.string "study_organization_name2"
    t.string "start_year2"
    t.string "end_year2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "resume2_id"
    t.index ["resume2_id"], name: "index_education2s_on_resume2_id"
  end

  create_table "educations", force: :cascade do |t|
    t.string "degree_title"
    t.string "study_organization_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "resume_id"
    t.index ["resume_id"], name: "index_educations_on_resume_id"
  end

  create_table "experience2s", force: :cascade do |t|
    t.string "job_title2"
    t.string "employer2"
    t.string "start_date2"
    t.string "end_date2"
    t.string "work_description2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "resume2_id"
    t.index ["resume2_id"], name: "index_experience2s_on_resume2_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "job_title"
    t.string "employer"
    t.string "start_date"
    t.string "end_date"
    t.string "job_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "resume_id"
    t.index ["resume_id"], name: "index_experiences_on_resume_id"
  end

  create_table "expertises", force: :cascade do |t|
    t.string "expertise"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "resume_id"
    t.index ["resume_id"], name: "index_expertises_on_resume_id"
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

  create_table "hobbies", force: :cascade do |t|
    t.string "hobby_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "resume_id"
    t.index ["resume_id"], name: "index_hobbies_on_resume_id"
  end

  create_table "hobby2s", force: :cascade do |t|
    t.string "hobby2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "resume2_id"
    t.index ["resume2_id"], name: "index_hobby2s_on_resume2_id"
  end

  create_table "programminglang2s", force: :cascade do |t|
    t.string "programminglang2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "resume2_id"
    t.index ["resume2_id"], name: "index_programminglang2s_on_resume2_id"
  end

  create_table "resume2s", force: :cascade do |t|
    t.string "name"
    t.string "profile_pic"
    t.string "current_role"
    t.string "profile_summary"
    t.string "contact_number"
    t.string "email"
    t.string "linkedin_username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.string "name"
    t.string "profile_pic"
    t.string "current_role"
    t.string "address_line_1"
    t.string "address_line_2"
    t.string "address_line_3"
    t.string "email"
    t.string "social_media_1"
    t.string "social_media_2"
    t.string "social_media_3"
    t.string "profile_summary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["slug"], name: "index_resumes_on_slug", unique: true
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "skill2s", force: :cascade do |t|
    t.string "skill2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "resume2_id"
    t.index ["resume2_id"], name: "index_skill2s_on_resume2_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider", limit: 50, default: "", null: false
    t.string "uid", limit: 500, default: "", null: false
    t.string "stripe_customer_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
