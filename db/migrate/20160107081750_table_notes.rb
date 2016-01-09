table_notes = class TableNotes < ActiveRecord::Migration
  def change
    create_table 'notes', force: :cascade do |t|
      t.integer  'texte_id', null: false
      t.string   'description'
      t.integer  'notesCahier'
      t.integer  'notesPage'
    end

    drop_table  'citations'

    create_table  'citations', force: :cascade do |t|
      t.integer     'note_id', null: false
      t.integer     'textePage'
      t.integer     'notesPage'
      t.text        'description'
    end

  end
end
