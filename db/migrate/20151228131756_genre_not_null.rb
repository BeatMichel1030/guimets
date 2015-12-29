class GenreNotNull < ActiveRecord::Migration
  def change
    change_column 'textes', 'genre_id', :integer, null: false
  end
end
