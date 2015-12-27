class NewDb < ActiveRecord::Migration
  def change
    create_table "auteurs", :force => true do |t|
      t.string   "nom"
      t.string   "libelle"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "citations", :force => true do |t|
      t.integer  "texte_id"
      t.integer  "page"
      t.text     "description"
      t.datetime "created_at",  :null => false
      t.datetime "updated_at",  :null => false
    end

    create_table "editeurs", :force => true do |t|
      t.string   "nom"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "genres", :force => true do |t|
      t.string   "nom"
      t.datetime "created_at", :null => false
      t.datetime "updated_at", :null => false
    end

    create_table "textes", :force => true do |t|
      t.integer  "auteur_id"
      t.integer  "editeur_id"
      t.string   "abreviation"
      t.string   "titre"
      t.integer  "genre_id"
      t.integer  "notesCahier"
      t.integer  "notesPage"
      t.integer  "annee"
      t.string   "journal"
      t.string   "volume"
      t.string   "numero"
      t.string   "pages"
      t.string   "remarque"
      t.datetime "created_at",  :null => false
      t.datetime "updated_at",  :null => false
      t.string   "titreLivre"
      t.integer  "texte_id"
    end
  end
end
