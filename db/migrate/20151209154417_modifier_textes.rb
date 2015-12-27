class ModifierTextes < ActiveRecord::Migration
  def change
    drop_table("textes")

    create_table "textes", force: :cascade do |t|
      t.string   "abreviation"
      t.integer  "auteur_id"
      t.string   "bidon"
      t.string   "titre"
      t.integer  "genre_id"
      t.integer  "editeur_id"
      t.integer  "annee"
      t.string   "journal"
      t.boolean  "statut"
      t.integer  "notesCahier"
      t.integer  "notesPage"
      t.integer  "texte_id"
      t.string   "titre_livre"
      t.string   "volume"
      t.string   "numero"
      t.string   "pages"
      t.string   "organisation"
      t.string   "remarque"
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
    end
  end
end