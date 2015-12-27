class Editeur < ActiveRecord::Base
  default_scope {order('nom ASC')}
  has_many :textes

  def name
    nom
  end
end
