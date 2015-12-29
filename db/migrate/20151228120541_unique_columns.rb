class UniqueColumns < ActiveRecord::Migration
  def change
    add_index :auteurs,  :nom, :unique => true
    add_index :editeurs, :nom, :unique => true
    add_index :textes,   :abreviation, :unique => true
  end
end
