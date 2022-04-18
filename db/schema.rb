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

ActiveRecord::Schema.define(version: 2022_04_18_042019) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.integer "film_id"
    t.integer "info_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.integer "character_id"
  end

end
