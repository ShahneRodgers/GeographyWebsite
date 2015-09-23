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

ActiveRecord::Schema.define(version: 20150808091058) do

  create_table "countries", force: true do |t|
    t.integer  "AE",         limit: 100, default: 0
    t.integer  "AF",         limit: 100, default: 0
    t.integer  "AL",         limit: 100, default: 0
    t.integer  "AM",         limit: 100, default: 0
    t.integer  "AO",         limit: 100, default: 0
    t.integer  "AR",         limit: 100, default: 0
    t.integer  "AT",         limit: 100, default: 0
    t.integer  "AU",         limit: 100, default: 0
    t.integer  "AZ",         limit: 100, default: 0
    t.integer  "BA",         limit: 100, default: 0
    t.integer  "BD",         limit: 100, default: 0
    t.integer  "BE",         limit: 100, default: 0
    t.integer  "BF",         limit: 100, default: 0
    t.integer  "BG",         limit: 100, default: 0
    t.integer  "BI",         limit: 100, default: 0
    t.integer  "BJ",         limit: 100, default: 0
    t.integer  "BN",         limit: 100, default: 0
    t.integer  "BO",         limit: 100, default: 0
    t.integer  "BR",         limit: 100, default: 0
    t.integer  "BS",         limit: 100, default: 0
    t.integer  "BT",         limit: 100, default: 0
    t.integer  "BW",         limit: 100, default: 0
    t.integer  "BY",         limit: 100, default: 0
    t.integer  "BZ",         limit: 100, default: 0
    t.integer  "CA",         limit: 100, default: 0
    t.integer  "CD",         limit: 100, default: 0
    t.integer  "CF",         limit: 100, default: 0
    t.integer  "CG",         limit: 100, default: 0
    t.integer  "CH",         limit: 100, default: 0
    t.integer  "CI",         limit: 100, default: 0
    t.integer  "CL",         limit: 100, default: 0
    t.integer  "CM",         limit: 100, default: 0
    t.integer  "CN",         limit: 100, default: 0
    t.integer  "CO",         limit: 100, default: 0
    t.integer  "CR",         limit: 100, default: 0
    t.integer  "CU",         limit: 100, default: 0
    t.integer  "CY",         limit: 100, default: 0
    t.integer  "CZ",         limit: 100, default: 0
    t.integer  "DE",         limit: 100, default: 0
    t.integer  "DJ",         limit: 100, default: 0
    t.integer  "DK",         limit: 100, default: 0
    t.integer  "DO",         limit: 100, default: 0
    t.integer  "DZ",         limit: 100, default: 0
    t.integer  "EC",         limit: 100, default: 0
    t.integer  "EE",         limit: 100, default: 0
    t.integer  "EG",         limit: 100, default: 0
    t.integer  "ER",         limit: 100, default: 0
    t.integer  "ES",         limit: 100, default: 0
    t.integer  "ET",         limit: 100, default: 0
    t.integer  "FI",         limit: 100, default: 0
    t.integer  "FJ",         limit: 100, default: 0
    t.integer  "FK",         limit: 100, default: 0
    t.integer  "FR",         limit: 100, default: 0
    t.integer  "GA",         limit: 100, default: 0
    t.integer  "GB",         limit: 100, default: 0
    t.integer  "GE",         limit: 100, default: 0
    t.integer  "GH",         limit: 100, default: 0
    t.integer  "GL",         limit: 100, default: 0
    t.integer  "GM",         limit: 100, default: 0
    t.integer  "GN",         limit: 100, default: 0
    t.integer  "GQ",         limit: 100, default: 0
    t.integer  "GR",         limit: 100, default: 0
    t.integer  "GT",         limit: 100, default: 0
    t.integer  "GW",         limit: 100, default: 0
    t.integer  "GY",         limit: 100, default: 0
    t.integer  "HN",         limit: 100, default: 0
    t.integer  "HR",         limit: 100, default: 0
    t.integer  "HT",         limit: 100, default: 0
    t.integer  "HU",         limit: 100, default: 0
    t.integer  "IND",        limit: 100, default: 0
    t.integer  "IE",         limit: 100, default: 0
    t.integer  "IL",         limit: 100, default: 0
    t.integer  "IN",         limit: 100, default: 0
    t.integer  "IQ",         limit: 100, default: 0
    t.integer  "IR",         limit: 100, default: 0
    t.integer  "IS",         limit: 100, default: 0
    t.integer  "IT",         limit: 100, default: 0
    t.integer  "JM",         limit: 100, default: 0
    t.integer  "JO",         limit: 100, default: 0
    t.integer  "JP",         limit: 100, default: 0
    t.integer  "KE",         limit: 100, default: 0
    t.integer  "KG",         limit: 100, default: 0
    t.integer  "KH",         limit: 100, default: 0
    t.integer  "KO",         limit: 100, default: 0
    t.integer  "KP",         limit: 100, default: 0
    t.integer  "KR",         limit: 100, default: 0
    t.integer  "KW",         limit: 100, default: 0
    t.integer  "KZ",         limit: 100, default: 0
    t.integer  "LA",         limit: 100, default: 0
    t.integer  "LB",         limit: 100, default: 0
    t.integer  "LK",         limit: 100, default: 0
    t.integer  "LR",         limit: 100, default: 0
    t.integer  "LS",         limit: 100, default: 0
    t.integer  "LT",         limit: 100, default: 0
    t.integer  "LU",         limit: 100, default: 0
    t.integer  "LV",         limit: 100, default: 0
    t.integer  "LY",         limit: 100, default: 0
    t.integer  "MA",         limit: 100, default: 0
    t.integer  "MD",         limit: 100, default: 0
    t.integer  "ME",         limit: 100, default: 0
    t.integer  "MG",         limit: 100, default: 0
    t.integer  "MK",         limit: 100, default: 0
    t.integer  "ML",         limit: 100, default: 0
    t.integer  "MM",         limit: 100, default: 0
    t.integer  "MN",         limit: 100, default: 0
    t.integer  "MR",         limit: 100, default: 0
    t.integer  "MW",         limit: 100, default: 0
    t.integer  "MX",         limit: 100, default: 0
    t.integer  "MY",         limit: 100, default: 0
    t.integer  "MZ",         limit: 100, default: 0
    t.integer  "NA",         limit: 100, default: 0
    t.integer  "NC",         limit: 100, default: 0
    t.integer  "NE",         limit: 100, default: 0
    t.integer  "NG",         limit: 100, default: 0
    t.integer  "NI",         limit: 100, default: 0
    t.integer  "NL",         limit: 100, default: 0
    t.integer  "NO",         limit: 100, default: 0
    t.integer  "NP",         limit: 100, default: 0
    t.integer  "NZ",         limit: 100, default: 0
    t.integer  "OM",         limit: 100, default: 0
    t.integer  "PA",         limit: 100, default: 0
    t.integer  "PE",         limit: 100, default: 0
    t.integer  "PG",         limit: 100, default: 0
    t.integer  "PH",         limit: 100, default: 0
    t.integer  "PK",         limit: 100, default: 0
    t.integer  "PL",         limit: 100, default: 0
    t.integer  "PR",         limit: 100, default: 0
    t.integer  "PS",         limit: 100, default: 0
    t.integer  "PT",         limit: 100, default: 0
    t.integer  "PY",         limit: 100, default: 0
    t.integer  "QA",         limit: 100, default: 0
    t.integer  "RO",         limit: 100, default: 0
    t.integer  "RS",         limit: 100, default: 0
    t.integer  "RU",         limit: 100, default: 0
    t.integer  "RW",         limit: 100, default: 0
    t.integer  "SA",         limit: 100, default: 0
    t.integer  "SB",         limit: 100, default: 0
    t.integer  "SD",         limit: 100, default: 0
    t.integer  "SE",         limit: 100, default: 0
    t.integer  "SI",         limit: 100, default: 0
    t.integer  "SK",         limit: 100, default: 0
    t.integer  "SL",         limit: 100, default: 0
    t.integer  "SN",         limit: 100, default: 0
    t.integer  "SO",         limit: 100, default: 0
    t.integer  "SR",         limit: 100, default: 0
    t.integer  "SS",         limit: 100, default: 0
    t.integer  "SV",         limit: 100, default: 0
    t.integer  "SY",         limit: 100, default: 0
    t.integer  "SZ",         limit: 100, default: 0
    t.integer  "TD",         limit: 100, default: 0
    t.integer  "TF",         limit: 100, default: 0
    t.integer  "TG",         limit: 100, default: 0
    t.integer  "TH",         limit: 100, default: 0
    t.integer  "TJ",         limit: 100, default: 0
    t.integer  "TL",         limit: 100, default: 0
    t.integer  "TM",         limit: 100, default: 0
    t.integer  "TN",         limit: 100, default: 0
    t.integer  "TR",         limit: 100, default: 0
    t.integer  "TT",         limit: 100, default: 0
    t.integer  "TW",         limit: 100, default: 0
    t.integer  "TZ",         limit: 100, default: 0
    t.integer  "UA",         limit: 100, default: 0
    t.integer  "UG",         limit: 100, default: 0
    t.integer  "US",         limit: 100, default: 0
    t.integer  "UY",         limit: 100, default: 0
    t.integer  "UZ",         limit: 100, default: 0
    t.integer  "VE",         limit: 100, default: 0
    t.integer  "VN",         limit: 100, default: 0
    t.integer  "VU",         limit: 100, default: 0
    t.integer  "WS",         limit: 100, default: 0
    t.integer  "YE",         limit: 100, default: 0
    t.integer  "ZA",         limit: 100, default: 0
    t.integer  "ZM",         limit: 100, default: 0
    t.integer  "ZW",         limit: 100, default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",           limit: 20, null: false
    t.string   "encrypted_password",            null: false
    t.string   "salt",                          null: false
    t.integer  "countries",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
