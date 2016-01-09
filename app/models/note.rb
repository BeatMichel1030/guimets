# == Schema Information
#
# Table name: notes
#
#  id          :integer          not null, primary key
#  texte_id    :integer          not null
#  description :string
#  notesCahier :integer
#  notesPage   :integer
#

class Note < ActiveRecord::Base
  belongs_to :texte
  has_many   :citations

  accepts_nested_attributes_for :citations

  def name
    return texte.abreviation + ' ' + cahier.to_s + ':' + page.to_s
  end

  def texte_abreviation
    return texte.abreviation
  end

  def auteur
    return texte.auteur.nom
  end
end
