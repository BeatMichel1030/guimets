class Texte < ActiveRecord::Base
  default_scope {order('abreviation ASC')}
  belongs_to :auteur
  belongs_to :editeur
  belongs_to :genre
  belongs_to :texte
  has_many   :citations
  scope :actif,   -> { where(statut: true) }
  scope :inactif, -> { where(statut: false) }

  def name
    abreviation
  end
end
