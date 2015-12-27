class ModifierGenre < ActiveRecord::Migration
  def change
    drop_table('genres')

    create_table "genres", force: :cascade do |t|
      t.string   "nom"
      t.string   "nom_bibtex"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
