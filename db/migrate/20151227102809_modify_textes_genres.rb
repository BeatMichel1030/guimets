class ModifyTextesGenres < ActiveRecord::Migration
  def change
    rename_column 'textes', 'statut', 'actif'
    remove_column 'genres', 'nom_bibtex'
  end
end
