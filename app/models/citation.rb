# == Schema Information
#
# Table name: citations
#
#  id          :integer          not null, primary key
#  note_id     :integer          not null
#  textePage   :integer          not null
#  description :string           not null
#

class Citation < ActiveRecord::Base
  belongs_to :note

  scope :contient, lambda{|mot_cles| self.search(:description_contains_all => mot_cles.split(' ')).result}

  def name
    return note.texte.abreviation + '-' + textePage.to_s
  end

  def auteur_nom
    return note.texte.auteur.nom
  end

  def texte_abreviation
    return note.texte.abreviation
  end

end
