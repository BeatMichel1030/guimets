class ModifCitation < ActiveRecord::Migration
  def change
    change_column 'citations', 'description', :string
  end
end
