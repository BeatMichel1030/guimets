# == Schema Information
#
# Table name: editeurs
#
#  id         :integer          not null, primary key
#  nom        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Editeur < ActiveRecord::Base
  default_scope {order('nom ASC')}
  has_many :textes

  def name
    nom
  end
end
