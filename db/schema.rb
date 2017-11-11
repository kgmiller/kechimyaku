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

ActiveRecord::Schema.define(version: 20171106223526) do

  create_table "masters", force: :cascade do |t|
    t.string "name"
    t.string "name_native"
    t.text "overview"
    t.integer "year_born"
    t.integer "year_died"
    t.string "gender"
    t.string "location"
    t.boolean "is_root"
  end

  create_table "relationship_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "parent_master_id"
    t.integer "child_master_id"
    t.integer "relationship_type_id"
  end

end
