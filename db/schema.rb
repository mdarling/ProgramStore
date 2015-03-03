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

ActiveRecord::Schema.define(version: 20150303174033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_programs", force: true do |t|
    t.string   "type"
    t.text     "admission_requirements"
    t.text     "career_opportunities"
    t.text     "contact_information"
    t.string   "degree"
    t.text     "keywords"
    t.string   "name"
    t.string   "online"
    t.text     "program_description"
    t.text     "transfer_agreements"
    t.string   "minimum_course_grade"
    t.string   "minimum_cumulative_gpa"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "moratorium"
    t.string   "college"
    t.string   "dept"
    t.string   "degree_type"
  end

  create_table "academic_programs_institutional_entities", id: false, force: true do |t|
    t.integer "academic_program_id",     null: false
    t.integer "institutional_entity_id", null: false
  end

  add_index "academic_programs_institutional_entities", ["academic_program_id", "institutional_entity_id"], name: "ap_ie_index", using: :btree

  create_table "courses", force: true do |t|
    t.integer  "institutional_entity_id"
    t.text     "co_or_prerequisite_string"
    t.text     "co_or_prerequisite_array"
    t.text     "corequisite_string"
    t.text     "corequisite_array"
    t.string   "credits"
    t.text     "description"
    t.string   "number"
    t.text     "prerequisite_array"
    t.text     "prerequisite_string"
    t.string   "semester_offering"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_degree_requirements", id: false, force: true do |t|
    t.integer "course_id",             null: false
    t.integer "degree_requirement_id", null: false
  end

  add_index "courses_degree_requirements", ["course_id", "degree_requirement_id"], name: "courses_degree_requirements_index", using: :btree

  create_table "degree_plans", force: true do |t|
    t.integer  "academic_program_id"
    t.string   "type_of_program"
    t.text     "degree_plan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "degree_requirement_types", force: true do |t|
    t.string   "type_of_degree_requirement"
    t.integer  "degree_requirement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "degree_requirements", force: true do |t|
    t.integer  "academic_program_id"
    t.integer  "credits"
    t.string   "minimum_grade"
    t.string   "name"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutional_entities", force: true do |t|
    t.integer  "parent_entity_id"
    t.string   "type"
    t.integer  "level"
    t.string   "acronym"
    t.boolean  "grad_programs"
    t.string   "name"
    t.string   "org_code"
    t.boolean  "undergrad_programs"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meta_requirements", force: true do |t|
    t.integer  "institutional_entity_id"
    t.string   "description"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
