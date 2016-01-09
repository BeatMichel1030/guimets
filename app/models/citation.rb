# == Schema Information
#
# Table name: citations
#
#  id          :integer          not null, primary key
#  note_id     :integer          not null
#  textePage   :integer
#  notesPage   :integer
#  description :text
#

class Citation < ActiveRecord::Base
  belongs_to :note

  scope :contient, lambda{|mot_cles| self.search(:description_contains_all => mot_cles.split(' ')).result}

  def name
    return note.texte.abreviation + '-' + textePage.to_s
  end

end
