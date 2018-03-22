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

ActiveRecord::Schema.define(version: 20180311210608) do

  create_table "shops", force: :cascade do |t|
    t.string   "owner_cd",      limit: 255
    t.string   "owner_nm",      limit: 255
    t.string   "yubin",         limit: 255
    t.string   "owner_addr1",   limit: 255
    t.string   "owner_addr2",   limit: 255
    t.string   "tel",           limit: 255
    t.string   "phone_no",      limit: 255
    t.string   "fax",           limit: 255
    t.string   "shop_memo",     limit: 255
    t.string   "main_img",      limit: 255
    t.string   "detail_img_1",  limit: 255
    t.string   "detail_img_2",  limit: 255
    t.string   "detail_img_3",  limit: 255
    t.string   "detail_img_4",  limit: 255
    t.string   "detail_text_1", limit: 255
    t.string   "detail_text_2", limit: 255
    t.string   "detail_text_3", limit: 255
    t.string   "detail_text_4", limit: 255
    t.string   "shop_b_hour",   limit: 255
    t.string   "shop_reg_hol",  limit: 255
    t.string   "geo",           limit: 255
    t.string   "ido",           limit: 255
    t.string   "keido",         limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "zaikos", force: :cascade do |t|
    t.string   "stock_id",         limit: 255
    t.string   "goocar_id",        limit: 255
    t.string   "owner_cd",         limit: 255
    t.string   "n_p_country_nm_n", limit: 255
    t.integer  "n_country_cd",     limit: 4
    t.string   "brand_nm",         limit: 255
    t.integer  "n_maker_cd",       limit: 4
    t.string   "n_p_brand_nm_n",   limit: 255
    t.integer  "n_brand_cd",       limit: 4
    t.string   "n_p_car_nm_n",     limit: 255
    t.integer  "n_car_cd",         limit: 4
    t.string   "n_p_grade_nm_n",   limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
