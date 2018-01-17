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

ActiveRecord::Schema.define(version: 20180117192524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: :cascade do |t|
    t.string "school"
    t.string "location"
    t.string "degree"
    t.string "major"
    t.string "year"
    t.bigint "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_educations_on_resume_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "employer"
    t.string "location"
    t.string "start_date"
    t.string "end_date"
    t.string "description"
    t.bigint "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_jobs_on_resume_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.string "phone"
    t.string "email"
    t.string "website"
    t.string "skills"
    t.string "summary"
    t.bigint "template_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["template_id"], name: "index_resumes_on_template_id"
  end

  create_table "templates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "educations", "resumes"
  add_foreign_key "jobs", "resumes"
  add_foreign_key "resumes", "templates"
end
