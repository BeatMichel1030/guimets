class ActifNotNull < ActiveRecord::Migration
  def change
    change_column 'textes', 'actif', :boolean, default: true
  end
end
