class CitationNotNull < ActiveRecord::Migration
  def change
    change_column :citations, :textePage, :integer, null: false
    change_column :citations, :description, :string, null: false
  end
end
