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

ActiveRecord::Schema.define(version: 2020_01_05_140249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blazer_audits", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "query_id"
    t.text "statement"
    t.string "data_source"
    t.datetime "created_at"
    t.index ["query_id"], name: "index_blazer_audits_on_query_id"
    t.index ["user_id"], name: "index_blazer_audits_on_user_id"
  end

  create_table "blazer_checks", force: :cascade do |t|
    t.bigint "creator_id"
    t.bigint "query_id"
    t.string "state"
    t.string "schedule"
    t.text "emails"
    t.text "slack_channels"
    t.string "check_type"
    t.text "message"
    t.datetime "last_run_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_blazer_checks_on_creator_id"
    t.index ["query_id"], name: "index_blazer_checks_on_query_id"
  end

  create_table "blazer_dashboard_queries", force: :cascade do |t|
    t.bigint "dashboard_id"
    t.bigint "query_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dashboard_id"], name: "index_blazer_dashboard_queries_on_dashboard_id"
    t.index ["query_id"], name: "index_blazer_dashboard_queries_on_query_id"
  end

  create_table "blazer_dashboards", force: :cascade do |t|
    t.bigint "creator_id"
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_blazer_dashboards_on_creator_id"
  end

  create_table "blazer_queries", force: :cascade do |t|
    t.bigint "creator_id"
    t.string "name"
    t.text "description"
    t.text "statement"
    t.string "data_source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_blazer_queries_on_creator_id"
  end

  create_table "csp3s", force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "individuals", force: :cascade do |t|
    t.string "cantville"
    t.string "nummi"
    t.string "achlr"
    t.string "aemmr"
    t.integer "aged"
    t.string "ager20"
    t.integer "agerev"
    t.string "agerevq"
    t.integer "anai"
    t.string "anemr"
    t.string "apaf"
    t.string "arm"
    t.string "ascen"
    t.string "bain"
    t.string "bati"
    t.string "catiris"
    t.string "catl"
    t.string "catpc"
    t.string "chau"
    t.string "chfl"
    t.string "chos"
    t.string "clim"
    t.string "cmbl"
    t.string "couple"
    t.integer "cs1"
    t.string "cuis"
    t.string "dept"
    t.string "derou"
    t.string "dipl_15"
    t.string "dnai"
    t.string "eau"
    t.string "egoul"
    t.string "elec"
    t.string "empl"
    t.string "etud"
    t.string "garl"
    t.string "hlml"
    t.string "iletud"
    t.string "ilt"
    t.string "immi"
    t.string "inai"
    t.string "inatc"
    t.string "infam"
    t.string "inper"
    t.string "inperf"
    t.decimal "ipondi"
    t.string "iran"
    t.string "iris"
    t.string "lienf"
    t.string "lprf"
    t.string "lprm"
    t.string "metrodom"
    t.string "moco"
    t.string "modv"
    t.string "na17"
    t.string "na5"
    t.string "naidt"
    t.string "nbpi"
    t.string "ne17fr"
    t.string "ne24fr"
    t.string "ne3fr"
    t.string "ne5fr"
    t.string "nenfr"
    t.string "nperr"
    t.string "numf"
    t.string "oridt"
    t.string "rech"
    t.string "region"
    t.string "sani"
    t.string "sanidom"
    t.string "sexe"
    t.string "sfm"
    t.string "stat_conj"
    t.string "statr"
    t.string "stocd"
    t.string "surf"
    t.string "tact"
    t.string "tactd16"
    t.string "tp"
    t.string "trans"
    t.string "triris"
    t.string "typc"
    t.string "typfc"
    t.string "typl"
    t.string "typmc"
    t.string "typmr"
    t.string "voit"
    t.string "wc"
    t.bigint "csp3_id"
    t.integer "departement"
    t.index ["csp3_id"], name: "index_individuals_on_csp3_id"
  end

  add_foreign_key "individuals", "csp3s"
end
