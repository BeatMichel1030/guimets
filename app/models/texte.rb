# == Schema Information
#
# Table name: textes
#
#  id          :integer          not null, primary key
#  abreviation :string           not null
#  auteur_id   :integer
#  titre       :string
#  genre_id    :integer          not null
#  editeur_id  :integer
#  annee       :integer
#  journal     :string
#  actif       :boolean          default(TRUE)
#  texte_id    :integer
#  titre_livre :string
#  volume      :string
#  numero      :string
#  pages       :string
#  remarque    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Texte < ActiveRecord::Base
  default_scope {order('abreviation ASC')}
  belongs_to :auteur
  belongs_to :editeur
  belongs_to :genre
  belongs_to :texte
  has_many   :notes
  scope :actif,   -> { where(statut: true) }
  scope :inactif, -> { where(statut: false) }

  def name
    abreviation
  end
end
