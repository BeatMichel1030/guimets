class RemoveNotesInTextes < ActiveRecord::Migration
  def change
    remove_column 'textes', 'notesCahier'
    remove_column 'textes', 'notesPage'
  end
end
