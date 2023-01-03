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

ActiveRecord::Schema[7.0].define(version: 2023_01_03_125719) do
  create_table "class_rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "teacher_id"
    t.index ["teacher_id"], name: "index_labs_on_teacher_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "sec_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "standard_id"
    t.integer "student_id"
    t.integer "teacher_id"
    t.index ["standard_id"], name: "index_sections_on_standard_id"
    t.index ["student_id"], name: "index_sections_on_student_id"
    t.index ["teacher_id"], name: "index_sections_on_teacher_id"
  end

  create_table "standard_labs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "labs_id"
    t.integer "standard_id"
    t.index ["labs_id"], name: "index_standard_labs_on_labs_id"
    t.index ["standard_id"], name: "index_standard_labs_on_standard_id"
  end

  create_table "standard_subjects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "standards", force: :cascade do |t|
    t.string "standard_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teacher_id"
    t.index ["teacher_id"], name: "index_standards_on_teacher_id"
  end

  create_table "student_standards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "subject_standards", force: :cascade do |t|
    t.integer "subject_id", null: false
    t.integer "standard_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["standard_id"], name: "index_subject_standards_on_standard_id"
    t.index ["subject_id"], name: "index_subject_standards_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "sub_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_depts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_subjects", force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.integer "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_teacher_subjects_on_subject_id"
    t.index ["teacher_id"], name: "index_teacher_subjects_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "subject_standards", "standards"
  add_foreign_key "subject_standards", "subjects"
end
