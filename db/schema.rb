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

ActiveRecord::Schema.define(version: 20180807183007) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "auteurs", force: :cascade do |t|
    t.string   "nom"
    t.string   "libelle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "auteurs", ["nom"], name: "index_auteurs_on_nom", unique: true

  create_table "citations", force: :cascade do |t|
    t.integer "note_id",     null: false
    t.integer "textePage",   null: false
    t.string  "description", null: false
  end

  create_table "editeurs", force: :cascade do |t|
    t.string   "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "editeurs", ["nom"], name: "index_editeurs_on_nom", unique: true

  create_table "genres", force: :cascade do |t|
    t.string   "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer "texte_id",    null: false
    t.string  "description"
    t.integer "cahier",      null: false
    t.integer "page",        null: false
  end

  create_table "textes", force: :cascade do |t|
    t.string   "abreviation",                null: false
    t.integer  "auteur_id"
    t.string   "titre"
    t.integer  "genre_id",                   null: false
    t.integer  "editeur_id"
    t.integer  "annee"
    t.string   "journal"
    t.boolean  "actif",       default: true
    t.integer  "texte_id"
    t.string   "titre_livre"
    t.string   "volume"
    t.string   "numero"
    t.string   "pages"
    t.string   "remarque"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "cote"
  end

  add_index "textes", ["abreviation"], name: "index_textes_on_abreviation", unique: true

end
