class RemoveChangeTexteColumns < ActiveRecord::Migration
  def change
    remove_column(:textes, :bidon, :string)
    remove_column(:textes, :organisation, :string)
    change_column(:textes, :abreviation, :string, :null => false)
  end
end
