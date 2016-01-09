class ChangeNotesCitations < ActiveRecord::Migration
  def change
    rename_column 'notes', 'notesCahier', 'cahier'
    rename_column 'notes', 'notesPage', 'page'

    change_column 'notes', 'cahier', :integer, null:  false
    change_column 'notes', 'page',   :integer, null:  false

    remove_column 'citations', 'notesPage'
  end
end
