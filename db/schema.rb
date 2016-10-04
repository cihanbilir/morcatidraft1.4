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

ActiveRecord::Schema.define(version: 20161004205442) do

  create_table "basvurans", force: true do |t|
    t.string   "isim"
    t.string   "soyisim"
    t.string   "kod"
    t.string   "telefon"
    t.string   "mail"
    t.integer  "gonullu_id"
    t.integer  "user_id"
    t.integer  "basvuru_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "basvurans", ["basvuru_id"], name: "index_basvurans_on_basvuru_id"
  add_index "basvurans", ["gonullu_id"], name: "index_basvurans_on_gonullu_id"
  add_index "basvurans", ["user_id"], name: "index_basvurans_on_user_id"

  create_table "basvurus", force: true do |t|
    t.integer  "basvuran_id"
    t.date     "ilk_basvuru_tarihi"
    t.integer  "gonullu_id"
    t.integer  "mc_destek_alma_durumu"
    t.integer  "iletisime_gecen"
    t.integer  "iletisime_gecme_yolu"
    t.text     "notlar"
    t.integer  "mc_siginakta_kaliyor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "basvurus", ["basvuran_id"], name: "index_basvurus_on_basvuran_id"
  add_index "basvurus", ["gonullu_id"], name: "index_basvurus_on_gonullu_id"

  create_table "gonullus", force: true do |t|
    t.string   "isim"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kisisels", force: true do |t|
    t.integer  "basvuran_id"
    t.date     "dogum_yili"
    t.string   "meslek"
    t.integer  "is_durumu"
    t.integer  "sosyal_guvence_durumu"
    t.string   "sosyal_guvence_durumu_ssk_free"
    t.string   "sosyal_guvence_durumu_diger_free"
    t.string   "il_ilce"
    t.integer  "medeni_durum"
    t.date     "evlilik_yili"
    t.integer  "cocuk_sayisi"
    t.integer  "uyruk"
    t.string   "uyruk_diger_free"
    t.string   "dili"
    t.integer  "cevirmen_ihtiyaci"
    t.string   "cevirmen_ihtiyaci_evet_free"
    t.integer  "engellilik_durumu"
    t.string   "engellilik_durumu_var_free"
    t.integer  "hamilelik"
    t.integer  "ruhsal_destek"
    t.string   "ruhsal_destek_evet_free"
    t.integer  "intihar_girisimi"
    t.text     "notlar"
    t.date     "hamilelik_evet_tarih"
    t.integer  "hamilelik_evet_doktor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kisisels", ["basvuran_id"], name: "index_kisisels_on_basvuran_id"

  create_table "siddets", force: true do |t|
    t.integer  "basvuran_id"
    t.integer  "siddet_turu"
    t.integer  "fiziksel_turu"
    t.integer  "psikolojik_turu"
    t.integer  "cinsel_turu"
    t.integer  "ekonomik_turu"
    t.integer  "dijital_turu"
    t.integer  "takip_turu"
    t.string   "siddet_diger_free"
    t.text     "notlar"
    t.integer  "uygulayan"
    t.string   "uygulayan_kurum_free"
    t.string   "uygulayan_diger_free"
    t.integer  "uygulayan_partner_sure_yil"
    t.date     "basladigi_donem"
    t.string   "basladigi_donem_diger_free"
    t.string   "sikligi"
    t.string   "arttigi_azaldigi_donemler"
    t.string   "yaralanmalar_verdigi_zarar"
    t.integer  "darp_raporu_var"
    t.integer  "baska_kanit_belge_var"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "siddets", ["basvuran_id"], name: "index_siddets_on_basvuran_id"

  create_table "siginak_ziyarets", force: true do |t|
    t.date     "giris"
    t.date     "cikis"
    t.integer  "basvuru_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "siginak_ziyarets", ["basvuru_id"], name: "index_siginak_ziyarets_on_basvuru_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
