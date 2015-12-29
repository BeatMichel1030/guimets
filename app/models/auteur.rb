# == Schema Information
#
# Table name: auteurs
#
#  id         :integer          not null, primary key
#  nom        :string
#  libelle    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Auteur < ActiveRecord::Base
  default_scope {order('nom ASC')}
  has_many :textes

  def name
    nom
  end
end
