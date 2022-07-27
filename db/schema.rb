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

ActiveRecord::Schema.define(version: 2022_06_24_122710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rates", force: :cascade do |t|
    t.string "currency"
    t.string "code"
    t.string "mid"
    t.string "bid"
    t.string "ask"
    t.bigint "table_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["table_type_id"], name: "index_rates_on_table_type_id"
  end

  create_table "table_types", force: :cascade do |t|
    t.string "table"
    t.string "no"
    t.string "tradingDate"
    t.string "effectiveDate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
