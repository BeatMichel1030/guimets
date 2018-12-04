class NewColumnTextes < ActiveRecord::Migration
  def change
    add_column(:textes, :cote, :string)
  end
end
