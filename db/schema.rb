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

ActiveRecord::Schema.define(version: 0) do

  create_table "bales", primary_key: "index", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "bale_time_stamp"
    t.string   "tag_sn",                     limit: 45
    t.string   "tag_store_id",               limit: 5
    t.integer  "bale_weight"
    t.integer  "bale_weight_scaled",                    default: 0
    t.integer  "tag_rf_reads"
    t.integer  "tag_max_rf_reads"
    t.float    "total_detection_confidence", limit: 53, default: 0.0
    t.float    "tag_detection_confidence",   limit: 53, default: 0.0
    t.float    "scale_detection_confidence", limit: 53, default: 0.0
    t.string   "goby_sn",                    limit: 45
    t.index ["tag_store_id", "tag_sn", "bale_time_stamp"], name: "roll_index", using: :btree
  end

  create_table "store_size", primary_key: "index", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "store_number", null: false
    t.integer "square_feet"
    t.index ["index"], name: "index_UNIQUE", unique: true, using: :btree
    t.index ["store_number"], name: "store_number_UNIQUE", unique: true, using: :btree
  end

  create_table "stores", primary_key: "index", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "store_number"
    t.text    "district",         limit: 65535
    t.string  "store_id",         limit: 5
    t.integer "total_weight",                   default: 0
    t.integer "num_bales",                      default: 0
    t.integer "mean_bale_weight",               default: 0
    t.integer "square_feet"
    t.index ["store_number"], name: "Store_Number_UNIQUE", unique: true, using: :btree
  end

end
